part of 'imports.dart';

class _Subjects extends GetView<GpaCalculatorController> {
  const _Subjects();

  @override
  Widget build(BuildContext context) => Column(
    children: [
      const _Top(),
      Expanded(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: controller.subjects
              .map(
                (a) => _SubjectItem(course: a),
          )
              .toList(),
        ),
      ),
    ],
  );
}

class _SubjectItem extends StatelessWidget {
  final CourseEntity course;

  const _SubjectItem({required this.course});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 30,
              height: 30,
              padding: const EdgeInsets.symmetric(horizontal: 2),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: context.dividerColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(100000),
              ),
              child: Text(
                course.credits.toString(),
                style: context.name,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    course.courseTitle,
                    style: context.name,
                  ),
                  _Grades(course.courseTitle),
                ],
              ),
            ),
          ],
        ),
      );
}

class _Top extends StatelessWidget {
  const _Top();

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Text(
            "Credit",
            style: context.name,
          ),
          SizedBox(width: 5),
          Text(
            "Subject",
            style: context.name,
          ),
          Spacer(),
          _GPAPart(),
        ],
      );
}

class _Grades extends StatelessWidget {
  final String subject;

  const _Grades(this.subject);

  @override
  Widget build(BuildContext context) => Wrap(
        alignment: WrapAlignment.center,
        children: GradeConstants.gradeColor.entries
            .map(
              (entry) => _GradeItem(
                color: entry.value,
                gradeText: entry.key,
                subject: subject,
              ),
            )
            .toList(),
      );
}

class _GradeItem extends GetView<GpaCalculatorController> {
  final int color;
  final String gradeText;
  final String subject;

  const _GradeItem({
    required this.color,
    required this.gradeText,
    required this.subject,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = controller.isSelected(subject, gradeText);
    return GestureDetector(
      onTap: () {
        controller.select(subject, gradeText);
        HapticFeedback.lightImpact();
      },
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 35,
          maxWidth: 35,
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          decoration: BoxDecoration(
            color: isSelected ? Color(color) : Colors.transparent,
            border: Border.all(
              color: Color(color),
              width: 2,
            ),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              gradeText,
              style: TextStyle(
                color: isSelected ? Colors.black : Color(color),
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _GPAPart extends GetView<GpaCalculatorController> {
  const _GPAPart();

  @override
  Widget build(BuildContext context) => Obx(
        () => Text(
          "Your GPA is ${controller.gpa}",
          style: context.title,
        ),
      );
}
