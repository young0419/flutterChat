import 'package:chat/controller/app_controller.dart';
import 'package:chat/controller/room_list_controller.dart';
import 'package:get/get.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
    Get.put(RoomListController());
  }

}