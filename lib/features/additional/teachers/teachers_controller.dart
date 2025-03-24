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
    teachers.value = mockTeachers;
    isLoading.value = false;
  }
}
