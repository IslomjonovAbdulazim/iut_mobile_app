part of 'imports.dart';

class LeaderboardController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<LeaderboardUserModel> users = <LeaderboardUserModel>[].obs;

  List<String> sortOptions = [
    "GPA",
    // "Name",
    // "ID",
    "AE2",
    "TW&D",
    "Calculus 2",
    "Physics 2",
    "PE2",
    "OOP2",
    "CED",
  ];
  Map<String, String> subjectNameMap = {
    "AE2": "Academic English 2",
    "TW&D": "Technical Writing & Discussion",
    "Calculus 2": "Calculus 2",
    "Physics 2": "Physics 2",
    "PE2": "Physics Experiment 2",
    "OOP2": "Object Oriented Programming 2",
    "CED": "Creative Engineering Design",
  };

  RxString selectedSortMethod = "GPA".obs;

  String? get currSubject => subjectNameMap[selectedSortMethod.value];

  @override
  void onInit() {
    connectLeaderboard();
    super.onInit();
  }

  void connectLeaderboard() {
    users.value = mockLeaderboardUsers;
    sort();
  }

  void changeSortMethod(String? value) {
    if (value == null) return;
    selectedSortMethod.value = value;
    sort();
  }

  void sort() {
    if (selectedSortMethod.value == "GPA") {
      users.sort((a, b) => b.gpa.compareTo(a.gpa));
    } else {
      users.sort((a, b) {
        final aSubject = a.subjects.firstWhere(
          (s) => s.name == currSubject,
          orElse: () => const SubjectModel(name: '', percentage: 0, rank: 999),
        );
        final bSubject = b.subjects.firstWhere(
          (s) => s.name == currSubject,
          orElse: () => const SubjectModel(name: '', percentage: 0, rank: 999),
        );
        return bSubject.percentage.compareTo(aSubject.percentage);
      });

      users.value = users.map((user) {
        final subjects = user.subjects;
        final selected = subjects.firstWhere(
          (s) => s.name == currSubject,
          orElse: () => const SubjectModel(name: '', percentage: 0, rank: 999),
        );

        if (selected.name.isNotEmpty) {
          final reordered = [
            selected,
            ...subjects.where((s) => s.name != currSubject),
          ];
          return user.copyWith(subjects: reordered);
        }
        return user;
      }).toList();
    }
  }
}
