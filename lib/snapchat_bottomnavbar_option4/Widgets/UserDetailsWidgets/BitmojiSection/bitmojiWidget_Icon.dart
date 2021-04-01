import 'package:flutter/material.dart';

Widget bitmojiIcon(icon) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Icon(
      icon,
      color: Colors.grey[350],
      size: 30,
    ),
  );
}
