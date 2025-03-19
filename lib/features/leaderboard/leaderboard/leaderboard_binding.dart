part of 'imports.dart';

class LeaderboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LeaderboardController());
  }
}
