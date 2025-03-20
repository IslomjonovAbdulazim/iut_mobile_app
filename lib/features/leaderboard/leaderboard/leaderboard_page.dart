part of 'imports.dart';

class LeaderboardPage extends GetView<LeaderboardController> {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: StreamBuilder<List<LeaderboardUserModel>>(
          stream: controller.connectLeaderboard(),
          builder: (context, snapshot) {
            if (snapshot.hasError || snapshot.data == null) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Text("Wait"),
              );
            }

            final users = snapshot.data!;

            return ImplicitlyAnimatedList<LeaderboardUserModel>(
              items: users,
              areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
              itemBuilder: (context, animation, user, index) {
                return SizeFadeTransition(
                  animation: animation,
                  child: _UserItem(user: user, index: index),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
