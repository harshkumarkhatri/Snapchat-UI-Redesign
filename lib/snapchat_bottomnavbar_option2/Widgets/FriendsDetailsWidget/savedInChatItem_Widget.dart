import 'package:flutter/material.dart';

Widget savedInChatItem() {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.only(left: 4, right: 4.0),
      child: Container(
        height: 150,
        // color: Colors.pink,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
      ),
    ),
  );
}
