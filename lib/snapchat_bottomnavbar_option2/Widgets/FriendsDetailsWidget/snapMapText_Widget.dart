import 'package:flutter/material.dart';

Widget snapMapText1(text) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 20.0, bottom: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    ),
  );
}
