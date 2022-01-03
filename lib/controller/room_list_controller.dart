import 'package:chat/model/room.dart';
import 'package:get/get.dart';

class RoomListController extends GetxController {
  RxList<Room> rooms = <Room>[].obs;
  final String _urlPrefix =
      "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger";

  @override
  void onInit() {
    getRoomList();
    super.onInit();
  }

  void getRoomList() {
    rooms(roomList);
    Future.delayed(
        Duration(seconds: 5),
        () => rooms.add(Room(
              image: "${_urlPrefix}_man_1.jpg",
              title: "홍길동",
              content: "오늘 저녁에 시간 되시나요?",
              time: "오후 11:00",
              count: "0",
            )));
  }
}
