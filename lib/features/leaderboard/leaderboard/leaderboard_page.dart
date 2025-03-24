part of 'imports.dart';

class LeaderboardPage extends GetView<LeaderboardController> {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        backgroundColor: context.backgroundColor,
        surfaceTintColor: context.backgroundColor,
        actions: [
          SizedBox(width: 20),
          Text(
            "Sort Method: ",
            style: context.smallName,
          ),
          SafeArea(child: _SortMethodDropdown()),
          SizedBox(width: 20),
        ],
      ),
      body: SafeArea(
        child: Obx(
          () => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: controller.isLoading.value
                ? Center(
                    child: CircularProgressIndicator.adaptive(),
                  )
                : ImplicitlyAnimatedList<LeaderboardUserModel>(
                    items: controller.users,
                    areItemsTheSame: (oldItem, newItem) =>
                        oldItem.id == newItem.id,
                    itemBuilder: (context, animation, user, index) {
                      return SizeFadeTransition(
                        animation: animation,
                        child: _UserItem(
                          user: user,
                          index: index,
                          rank:
                              controller.currSubject == null ? null : index + 1,
                          subject: controller.subjectNameMap[
                              controller.selectedSortMethod.value],
                        ),
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
