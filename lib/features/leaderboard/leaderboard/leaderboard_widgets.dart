part of 'imports.dart';

class _UserItem extends StatelessWidget {
  final LeaderboardUserModel user;
  final int index;

  const _UserItem({
    required this.user,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        // Get.toNamed(AppRoutes.userProfile, arguments: user);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        decoration: BoxDecoration(
          color: context.cardColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 30,
              child: Text(
                "${index + 1}",
                style: context.number,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: user.avatar == null
                  ? Container(
                      height: 30,
                      width: 30,
                      color: Colors.red,
                    )
                  : CachedNetworkWidget(
                      user.avatar!,
                      height: 40,
                      width: 40,
                    ),
            ),
            const SizedBox(width: 10),
            Text(
              user.fullname,
              style: context.name,
            ),
            const Spacer(),
            Text(
              user.gpa.toStringAsFixed(2),
              style: context.number,
            ),
          ],
        ),
      ),
    );
  }
}
