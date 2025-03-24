part of 'imports.dart';

class _UserItem extends StatelessWidget {
  final LeaderboardUserModel user;
  final int index;
  final int? rank;
  final String? subject;

  const _UserItem({
    required this.user,
    required this.index,
    this.rank,
    this.subject,
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
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: rank == null || sub.name == subject
                            ? context.selection
                            : context.dividerColor,
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
                            "#${rank == null || subject != sub.name ? sub.rank : rank} | ${sub.percentage}%",
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
    return Obx(
      () => DropdownButton<String>(
        dropdownColor: context.cardColor,
        borderRadius: BorderRadius.circular(10),
        padding: EdgeInsets.symmetric(horizontal: 10),
        value: controller.selectedSortMethod.value,
        onChanged: controller.changeSortMethod,
        underline: SizedBox.shrink(),
        items: controller.sortOptions
            .map(
              (sortOption) => DropdownMenuItem<String>(
                value: sortOption,
                child: Text(
                  sortOption,
                  style: context.name,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _Search extends GetView<LeaderboardController> {
  const _Search();

  @override
  Widget build(BuildContext context) {
    return SearchField<LeaderboardUserModel>(
      suggestions: controller.users
          .map((user) => SearchFieldListItem<LeaderboardUserModel>(
                user.fullname,
                item: user,
              ))
          .toList(),
      searchInputDecoration: SearchInputDecoration(
        labelText: 'Search',
        hintText: 'Search',
        border: OutlineInputBorder(),
      ),
      suggestionState: Suggestion.expand,
      maxSuggestionsInViewPort: 5,
      itemHeight: 40,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a search term';
        }
        return null;
      },
    );
  }
}
