import 'package:chat/component/room_view.dart';
import 'package:chat/model/room.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoomList extends StatelessWidget {
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
      body: ListView(
        children: List.generate(roomList.length, (index) => RoomView(room: roomList[index])),
      ),
    );
  }
}
