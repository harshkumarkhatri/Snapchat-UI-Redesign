import 'package:flutter/material.dart';

Widget singleItem(text) {
  return Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 12),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
    ),
  );
}
