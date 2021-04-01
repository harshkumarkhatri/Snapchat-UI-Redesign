import 'package:flutter/material.dart';

Widget chatAttachment() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Container(
      height: 120,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
              spreadRadius: 2,
              offset: Offset(0, 1)),
        ],
      ),
      child: Center(
        child: Text(
          "Links, addresses, usernames and other attachments saved in the Chat will appear here.",
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 1.3,
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}
