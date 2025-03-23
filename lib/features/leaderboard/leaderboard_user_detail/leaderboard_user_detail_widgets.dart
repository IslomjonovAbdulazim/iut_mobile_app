part of 'imports.dart';

class _Avatar extends GetView<LeaderboardUserDetailController> {
  const _Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        controller.user.value.avatar == null
            ? const SizedBox.shrink()
            : ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: CachedNetworkWidget(controller.user.value.avatar!),
              ),
      ],
    );
  }
}

class _QuickInfo extends GetView<LeaderboardUserDetailController> {
  const _QuickInfo();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: context.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "#${controller.user.value.rank}",
                  style: context.title,
                ),
                const SizedBox(width: 5),
                Text(
                  " Rank",
                  style: context.name,
                ),
                const Spacer(),
                Text(
                  controller.user.value.fullname,
                  style: context.biggerName,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  controller.user.value.gpa.toStringAsFixed(2),
                  style: context.title,
                ),
                const SizedBox(width: 5),
                Text(
                  "GPA",
                  style: context.name,
                ),
                const Spacer(),
                Text(
                  controller.user.value.id,
                  style: context.biggerName,
                ),
                const SizedBox(width: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Subjects extends GetView<LeaderboardUserDetailController> {
  const _Subjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        controller.detail.value.sciences.length,
        (index) => _SubjectDetail(
          science: controller.detail.value.sciences[index],
        ),
      ),
    );
  }
}

class _SubjectDetail extends StatelessWidget {
  final ScienceModel science;

  const _SubjectDetail({required this.science});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: context.cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    science.name,
                    style: context.biggerName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  "Top ",
                  style: context.smallName,
                ),
                Text(
                  "${science.rank}",
                  style: context.biggerName,
                ),
                Text(
                  " | ",
                  style: context.smallName,
                ),
                Text(
                  "${science.percentage}",
                  style: context.biggerName,
                ),
                SizedBox(width: 2),
                Text(
                  "%",
                  style: context.name,
                ),
              ],
            ),
            SizedBox(height: 6),
            SizedBox(
              height: 70,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    science.tasks.length,
                    (index) {
                      final task = science.tasks[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: context.selection,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                task.title,
                                style: context.name,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "${task.userEarned.toStringAsFixed(1)}/${task.total}.0",
                                style: context.name,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
