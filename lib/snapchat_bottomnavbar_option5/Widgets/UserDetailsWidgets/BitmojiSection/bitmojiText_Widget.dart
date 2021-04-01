import 'package:flutter/material.dart';

Widget bitmojiText() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 20.0, bottom: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Bitmoji",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    ),
  );
}
