import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_user_detail_model.freezed.dart';
part 'leaderboard_user_detail_model.g.dart';

@freezed
class DetailUserModel with _$DetailUserModel {
  const factory DetailUserModel({
    required String avatar,
    required String fullname,
    required double gpa,
    required List<ScienceModel> sciences,
  }) = _DetailUserModel;

  factory DetailUserModel.fromJson(Map<String, dynamic> json) =>
      _$DetailUserModelFromJson(json);
}

@freezed
class ScienceModel with _$ScienceModel {
  const factory ScienceModel({
    required String name,
    required List<TaskModel> tasks,
    required double percentage,
    required int rank,
  }) = _ScienceModel;

  factory ScienceModel.fromJson(Map<String, dynamic> json) =>
      _$ScienceModelFromJson(json);
}

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required String title,
    required int total,
    required double userEarned,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}


final DetailUserModel mockDetailUser = DetailUserModel(
  avatar: "https://randomuser.me/api/portraits/men/1.jpg",
  fullname: "Javohir Tursunov",
  gpa: 3.75,
  sciences: [
    ScienceModel(
      name: "Matematika",
      percentage: 92.3,
      rank: 1,
      tasks: [
        TaskModel(title: "Midterm Exam", total: 40, userEarned: 35),
        TaskModel(title: "Final Exam", total: 40, userEarned: 38),
        TaskModel(title: "Homework", total: 10, userEarned: 9),
        TaskModel(title: "Attendance", total: 10, userEarned: 10),
      ],
    ),
    ScienceModel(
      name: "Fizika",
      percentage: 88.7,
      rank: 2,
      tasks: [
        TaskModel(title: "Midterm Exam", total: 30, userEarned: 28),
        TaskModel(title: "Final Exam", total: 50, userEarned: 45),
        TaskModel(title: "Lab Work", total: 10, userEarned: 8),
        TaskModel(title: "Attendance", total: 10, userEarned: 10),
      ],
    ),
    ScienceModel(
      name: "Informatika",
      percentage: 95.1,
      rank: 1,
      tasks: [
        TaskModel(title: "Project", total: 50, userEarned: 48),
        TaskModel(title: "Final Exam", total: 30, userEarned: 27),
        TaskModel(title: "Homework", total: 10, userEarned: 9),
        TaskModel(title: "Attendance", total: 10, userEarned: 10),
      ],
    ),
  ],
);
