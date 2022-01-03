import 'package:chat/component/my_chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ChatController extends GetxController {
  RxList<dynamic> chats = <dynamic>[].obs;
  final TextEditingController _textController = TextEditingController();


  void _handleSubmitted(text) {
    _textController.clear();

    chats.add(
      MyChat(
        text: text,
        time: DateFormat("a K:m")
            .format(DateTime.now())
            .replaceAll("AM", "오전")
            .replaceAll("PM", "오후"),
      ),
    );
  }
}


