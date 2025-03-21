part of 'imports.dart';

class _Avatar extends StatelessWidget {
  const _Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Get.arguments as LeaderboardUserModel;
    return Column(
      children: [
        user.avatar == null
            ? const SizedBox.shrink()
            : ClipRRect(
          borderRadius: BorderRadius.circular(1000),
          child: CachedNetworkWidget(user.avatar!),
        ),
      ],
    );
  }
}

class _QuickInfo extends StatelessWidget {
  const _QuickInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Get.arguments as LeaderboardUserModel;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: context.cardColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "#${user.rank}",
                  style: context.title,
                ),
                const SizedBox(width: 5),
                Text(
                  " All Time",
                  style: context.smallName,
                ),
                const Spacer(),
                Text(
                  user.fullname,
                  style: context.biggerName,
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Row(
            //   children: [
            //     Text(
            //       "${mockUser.points}",
            //       style: context.title,
            //     ),
            //     const SizedBox(width: 5),
            //     SvgPicture.asset(
            //       IconConstants.points,
            //       height: 30,
            //       width: 30,
            //     ),
            //     Text(
            //       "pts.",
            //       style: context.name,
            //     ),
            //     const Spacer(),
            //     Text(
            //       "streak",
            //       style: context.name,
            //     ),
            //     SvgPicture.asset(
            //       IconConstants.streak,
            //       height: 30,
            //       width: 30,
            //     ),
            //     const SizedBox(width: 5),
            //     Text(
            //       "${mockUser.streaks}",
            //       style: context.title,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

