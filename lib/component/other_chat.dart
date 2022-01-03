import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OtherChat extends StatelessWidget {
  final String name;
  final String text;
  final String time;

  const OtherChat(
      {Key? key, required this.name, required this.text, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          CircleAvatar(
            child: Icon(FontAwesomeIcons.user),
          ),
          SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Container(
                  child: Text(text),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 5),
          Text(time, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
