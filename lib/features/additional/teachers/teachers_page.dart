part of 'imports.dart';

class TeachersPage extends GetView<TeachersController> {
  const TeachersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Teacher",
        style: context.title,
      ),
    );
  }
}
