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
    required String officeHours,
  }) = _TeacherModel;

  factory TeacherModel.fromJson(Map<String, dynamic> json) =>
      _$TeacherModelFromJson(json);
}
List<TeacherModel> mockTeachers = [
  TeacherModel(
    fullname: "Professor Anvar Karimov",
    email: "anvar.karimov@university.uz",
    subject: "Matematika",
    officeHours: "Monday, Wednesday 10:00 - 12:00",
  ),
  TeacherModel(
    fullname: "Dr. Dilrabo Ismoilova",
    email: "dilrabo.ismoilova@university.uz",
    subject: "Biologiya",
    officeHours: "Tuesday, Thursday 14:00 - 16:00",
  ),
  TeacherModel(
    fullname: "Professor Javohir Tursunov",
    email: "javohir.tursunov@university.uz",
    subject: "Fizika",
    officeHours: "Monday, Friday 09:00 - 11:00",
  ),
  TeacherModel(
    fullname: "Dr. Madina Qodirova",
    email: "madina.qodirova@university.uz",
    subject: "Kimyo",
    officeHours: "Wednesday, Friday 13:00 - 15:00",
  ),
  TeacherModel(
    fullname: "Professor Shahzod Axmedov",
    email: "shahzod.ahmedov@university.uz",
    subject: "Tarix",
    officeHours: "Monday, Thursday 11:00 - 13:00",
  ),
  TeacherModel(
    fullname: "Dr. Nodira Rustamova",
    email: "nodira.rustamova@university.uz",
    subject: "Informatika",
    officeHours: "Tuesday, Friday 15:00 - 17:00",
  ),
  TeacherModel(
    fullname: "Professor Bekzod Yuldashev",
    email: "bekzod.yuldashev@university.uz",
    subject: "Geografiya",
    officeHours: "Wednesday, Friday 09:00 - 11:00",
  ),
  TeacherModel(
    fullname: "Dr. Laylo Xolmatova",
    email: "laylo.xolmatova@university.uz",
    subject: "Ona tili va adabiyot",
    officeHours: "Tuesday, Thursday 10:00 - 12:00",
  ),
  TeacherModel(
    fullname: "Professor Rustam Zokirov",
    email: "rustam.zokirov@university.uz",
    subject: "Ingliz tili",
    officeHours: "Monday, Wednesday 13:00 - 15:00",
  ),
  TeacherModel(
    fullname: "Dr. Zarnigor Abdurahmonova",
    email: "zarnigor.abdurahmonova@university.uz",
    subject: "Iqtisodiyot",
    officeHours: "Tuesday, Friday 11:00 - 13:00",
  ),
];
