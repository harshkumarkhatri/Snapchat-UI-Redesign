import 'package:flutter/material.dart';

Widget storiesText() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 28.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Stories",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(
              24,
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 12.0, right: 12, top: 6, bottom: 6),
            child: Text(
              "+ Private Story",
              style: TextStyle(
                // letterSpacing: 1.2,
                color: Colors.grey[800],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
