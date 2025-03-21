part of 'imports.dart';

class LeaderboardUserDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LeaderboardUserDetailController());
  }
}
