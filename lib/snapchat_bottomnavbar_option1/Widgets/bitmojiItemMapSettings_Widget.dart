import 'package:flutter/material.dart';

Widget bitmojiItemMapSettings() {
  return Container(
    padding: EdgeInsets.only(top: 12, bottom: 12, left: 15, right: 15),
    child: Row(
      children: [
        Text(
          "Change My Outfit",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        Container(
            child: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 30)),
      ],
    ),
  );
}
