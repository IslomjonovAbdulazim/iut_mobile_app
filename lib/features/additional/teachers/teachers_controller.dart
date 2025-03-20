part of 'imports.dart';

class TeachersController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<TeacherModel> teachers = <TeacherModel>[].obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 2));
    teachers.value = mockTeachers;
    isLoading.value = false;
  }
}
