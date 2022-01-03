import 'package:chat/controller/app_controller.dart';
import 'package:chat/screens/room_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class App extends GetView<AppController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: IndexedStack(
            index: controller.tabIndex.value,
            children: [
              Container(
                child: Text(
                  "User",
                ),
              ),
              RoomList(),
              Container(
                child: Text(
                  "Chat",
                ),
              ),
              Container(
                child: Text(
                  "Organ",
                ),
              ),
              Container(
                child: Text(
                  "Settings",
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.tabIndex.value,
          onTap: controller.changeTabIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comment),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comment),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.sitemap),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.cog),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
