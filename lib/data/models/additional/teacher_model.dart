import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_model.freezed.dart';
part 'teacher_model.g.dart';

@freezed
class TeacherModel with _$TeacherModel {
  const factory TeacherModel({
    required String fullname,
    required String email,
    required String subject,
    @JsonKey(name: 'office_hours')
    required String officeHours, // Renamed for better JSON compatibility
  }) = _TeacherModel;

  factory TeacherModel.fromJson(Map<String, dynamic> json) =>
      _$TeacherModelFromJson(json);
}
