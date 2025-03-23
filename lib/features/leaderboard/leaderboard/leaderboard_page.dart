part of 'imports.dart';

class LeaderboardPage extends GetView<LeaderboardController> {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        actions: [
          SizedBox(width: 20),
          Text(
            "Sort Method: ",
            style: context.smallName,
          ),
          SafeArea(child: _SortMethodDropdown()),
          Spacer(),
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
                : StreamBuilder<List<LeaderboardUserModel>>(
                    stream: controller.connectLeaderboard(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError || snapshot.data == null) {
                        return Center(
                          child: Text(
                            snapshot.error.toString(),
                            style: context.smallName,
                          ),
                        );
                      }
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: Text(
                            "Wait",
                            style: context.smallName,
                          ),
                        );
                      }

                      final users = controller.sort(snapshot.data!);

                      return ImplicitlyAnimatedList<LeaderboardUserModel>(
                        items: users,
                        areItemsTheSame: (oldItem, newItem) =>
                            oldItem.id == newItem.id,
                        itemBuilder: (context, animation, user, index) {
                          return SizeFadeTransition(
                            animation: animation,
                            child: _UserItem(
                              user: user,
                              index: index,
                              rank: controller.subjectNameMap[controller
                                          .selectedSortMethod.value] ==
                                      null
                                  ? null
                                  : index + 1,
                              subject: controller.subjectNameMap[
                                  controller.selectedSortMethod.value],
                            ),
                          );
                        },
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
