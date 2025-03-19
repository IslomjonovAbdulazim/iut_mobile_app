// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaderboardUserModelImpl _$$LeaderboardUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderboardUserModelImpl(
      fullname: json['fullname'] as String,
      gpa: (json['gpa'] as num).toDouble(),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$LeaderboardUserModelImplToJson(
        _$LeaderboardUserModelImpl instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'gpa': instance.gpa,
      'avatar': instance.avatar,
    };
