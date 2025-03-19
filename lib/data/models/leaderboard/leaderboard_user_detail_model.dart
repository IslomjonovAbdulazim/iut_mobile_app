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
