part of 'imports.dart';

class LeaderboardUserDetailPage
    extends GetView<LeaderboardUserDetailController> {
  const LeaderboardUserDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        backgroundColor: context.backgroundColor,
        surfaceTintColor: context.backgroundColor,
        title: Text(controller.user.value.fullname),
      ),
      body: controller.isLoading.value
          ? Center(
              child: CircularProgressIndicator.adaptive(),
            )
          : const SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: Column(
                children: [
                  _Avatar(),
                  SizedBox(height: 30),
                  _QuickInfo(),
                  SizedBox(height: 30),
                  SizedBox(height: 200),
                ],
              ),
            ),
    );
  }
}
