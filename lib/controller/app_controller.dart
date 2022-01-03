import 'package:get/get.dart';

class AppController extends GetxController {
  RxInt tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex(index);
  }
}