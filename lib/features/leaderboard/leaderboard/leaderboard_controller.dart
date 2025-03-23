part of 'imports.dart';

class LeaderboardController extends GetxController {
  RxBool isLoading = false.obs;

  Stream<List<LeaderboardUserModel>> connectLeaderboard() {
    final result = sort(mockLeaderboardUsers);
    return Stream.value(result);
    // print(ApiConstants.streamURL + ApiConstants.leaderboard);
    // final channel = WebSocketChannel.connect(
    //   Uri.parse(ApiConstants.streamURL + ApiConstants.leaderboard),
    // );
    //
    // return channel.stream.map((data) {
    //   // Assuming your data comes in as a JSON-encoded list
    //   print("-----------------------");
    //   print("\n\n\n\n\n\n");
    //   print(data);
    //   final List<dynamic> jsonList = jsonDecode(data);
    //   return jsonList
    //       .map((json) => LeaderboardUserModel.fromJson(json))
    //       .toList();
    // });
  }

  List<String> sortOptions = [
    "GPA",
    "Name",
    "ID",
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

  void changeSortMethod(String? value) {
    if (value == null) return;
    selectedSortMethod.value = value;
  }

  List<LeaderboardUserModel> sort(List<LeaderboardUserModel> users) {
    print("-------------sort");
    final result = users;

    if (selectedSortMethod.value == "GPA") {
      result.sort((a, b) => b.gpa.compareTo(a.gpa));
    } else {
      result.sort((a, b) {
        final aSubject = a.subjects.firstWhere(
              (s) => s.name == subjectNameMap[selectedSortMethod.value],
          orElse: () => const SubjectModel(name: '', percentage: 0, rank: 999),
        );
        final bSubject = b.subjects.firstWhere(
              (s) => s.name == subjectNameMap[selectedSortMethod.value],
          orElse: () => const SubjectModel(name: '', percentage: 0, rank: 999),
        );
        return bSubject.percentage.compareTo(aSubject.percentage);
      });
    }

    return result;
  }


}

