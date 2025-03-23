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
        Get.toNamed(AppRoutes.leaderboardUserDetail, arguments: user);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: context.cardColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 40,
                  child: Text(
                    "${index + 1}",
                    style: context.number,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 2),
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
                Expanded(
                  child: Text(
                    user.fullname,
                    style: context.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 3),
                Text(
                  user.gpa.toStringAsFixed(2),
                  style: context.number,
                ),
              ],
            ),
            SizedBox(height: 8),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: user.subjects.length,
                itemBuilder: (context, index) {
                  final sub = user.subjects[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: context.selection,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            sub.name,
                            style: context.smallName,
                          ),
                          SizedBox(height: 3),
                          Text(
                            "#${sub.rank} | ${sub.percentage}%",
                            style: context.number,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SortMethodDropdown extends GetView<LeaderboardController> {
  const _SortMethodDropdown();

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: context.cardColor,
      borderRadius: BorderRadius.circular(20),
      value: controller.selectedSortMethod.value,
      onChanged: controller.changeSortMethod,
      underline: SizedBox.shrink(),
      items: controller.sortOptions
          .map(
            (m) => DropdownMenuItem<String>(
              value: m,
              child: Text(
                m,
                style: context.smallName,
              ),
            ),
          )
          .toList(),
    );
  }
}
