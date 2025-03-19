part of 'imports.dart';

class TeachersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TeachersController());
  }
}
