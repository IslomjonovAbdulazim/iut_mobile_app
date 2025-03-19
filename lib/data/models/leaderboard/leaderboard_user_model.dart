import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_user_model.freezed.dart';
part 'leaderboard_user_model.g.dart';

@freezed
class LeaderboardUserModel with _$LeaderboardUserModel {
  const factory LeaderboardUserModel({
    required String fullname,
    required double gpa,
    String? avatar,
    required List<SubjectModel> subjects,
  }) = _LeaderboardUserModel;

  factory LeaderboardUserModel.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardUserModelFromJson(json);
}

@freezed
class SubjectModel with _$SubjectModel {
  const factory SubjectModel({
    required String name,
    required double percentage,
    required int rank,
  }) = _SubjectModel;

  factory SubjectModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectModelFromJson(json);
}
