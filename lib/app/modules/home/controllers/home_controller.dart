import 'package:get/get.dart';

class HomeController extends GetxController {
  int tab = 0;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeIndex(int index) {
    tab = index;
    update();
  }
}
