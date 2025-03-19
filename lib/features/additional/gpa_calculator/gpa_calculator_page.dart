part of 'imports.dart';

class GpaCalculatorPage extends GetView<GpaCalculatorController> {
  const GpaCalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: context.textPrimary,
                ),
              ),
              child: Obx(
                () => CustomDropdownButton(
                  items: SemesterConstants.semesters,
                  onChanged: controller.onSemesterSelected,
                  selectedItem: controller.selectedValue.value,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Expanded(child: _Subjects()),
          ],
        ),
      ),
    );
  }
}
