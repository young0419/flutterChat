import 'package:chat/component/room_view.dart';
import 'package:chat/controller/room_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class RoomList extends GetView<RoomListController> {
  const RoomList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "대화",
        ),
        actions: [
          Icon(FontAwesomeIcons.search),
          SizedBox(width: 15),
          Icon(FontAwesomeIcons.plusCircle),
          SizedBox(width: 15),
          Icon(FontAwesomeIcons.minusCircle),
        ],
      ),
      body: Obx(() => ListView.builder(
          itemCount: controller.rooms.length,
          itemBuilder: (BuildContext context, int index) {
            return RoomView(room: controller.rooms[index]);
          },
        ),
      ),
    );
  }
}
