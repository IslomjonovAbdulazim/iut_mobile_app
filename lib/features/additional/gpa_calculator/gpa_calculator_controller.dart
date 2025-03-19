part of 'imports.dart';

class GpaCalculatorController extends GetxController {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  int listIndex = 0;
  RxString selectedValue = SemesterConstants.semesters.first.obs;
  final RxList<CourseEntity> subjects = <CourseEntity>[].obs;
  final RxMap<String, String> grades = <String, String>{}.obs;

  GpaCalculatorController() {
    init();
  }

  bool isSelected(String subject, String grade) => grades[subject] == grade;

  num get gpa {
    int totalHours = 0;
    double totalPoints = 0;
    for (final entity in grades.entries) {
      final subject =
          subjects.firstWhere((subject) => subject.courseTitle == entity.key);
      final grade = GradeConstants.gradePoints[entity.value] ?? 0;
      totalHours += subject.credits;
      totalPoints += subject.credits * grade;
    }

    if (totalHours == 0) return 0.00;
    return (totalPoints / totalHours);
  }

  void init() {
    loadSubjects();
  }

  void loadSubjects() {
    subjects.value = SubjectConstants.years[listIndex];
  }

  void onSemesterSelected(String? value) {
    if (value == null) return;
    HapticFeedback.lightImpact();
    listIndex = SemesterConstants.semesters.indexOf(value);
    selectedValue.value = value;
    grades.value = {};
    loadSubjects();
  }

  void select(String subject, String grade) {
    if (grades[subject] == grade) {
      grades.remove(subject);
    } else {
      grades[subject] = grade;
    }
  }
}
