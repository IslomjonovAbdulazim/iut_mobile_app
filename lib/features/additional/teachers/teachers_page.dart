part of 'imports.dart';

class TeachersPage extends GetView<TeachersController> {
  const TeachersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: controller.teachers.length,
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) {
          final t = controller.teachers[index];
          return _TeacherWidget(teacher: t);
        },
      ),
    );
  }
}
