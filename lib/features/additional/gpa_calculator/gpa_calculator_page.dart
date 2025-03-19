part of 'imports.dart';

class GpaCalculatorPage extends GetView<GpaCalculatorController> {
  const GpaCalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "GPA Calculator",
        style: context.title,
      ),
    );
  }
}
