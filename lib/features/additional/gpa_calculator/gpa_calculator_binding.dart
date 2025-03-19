part of 'imports.dart';

class GpaCalculatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GpaCalculatorController());
  }
}
