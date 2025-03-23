part of 'imports.dart';

class LeaderboardUserDetailController extends GetxController {
  RxBool isLoading = false.obs;
  late Rx<LeaderboardUserModel> user;
  late Rx<DetailUserModel> detail;


  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    isLoading.value = true;
    user = (Get.arguments as LeaderboardUserModel).obs;
    detail = mockDetailUser.obs;
    isLoading.value = false;
  }
}
