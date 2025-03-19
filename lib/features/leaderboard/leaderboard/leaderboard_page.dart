part of 'imports.dart';

class LeaderboardPage extends GetView<LeaderboardController> {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Leaderboard",
        style: context.title,
      ),
    );
  }
}
