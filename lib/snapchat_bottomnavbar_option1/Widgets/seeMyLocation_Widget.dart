import 'package:flutter/material.dart';

Widget seeMyLocation(text, displayCheck) {
  return Container(
    padding: EdgeInsets.only(top: 12, bottom: 12, left: 15, right: 15),
    child: Row(
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        displayCheck
            ? Container(child: Icon(Icons.check, color: Colors.blue, size: 30))
            : Container(),
      ],
    ),
  );
}
