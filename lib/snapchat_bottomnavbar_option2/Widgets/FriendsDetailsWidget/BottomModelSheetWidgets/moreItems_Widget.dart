import 'package:flutter/material.dart';

Widget moreItems(text, color, isRounded) {
  return Container(
    alignment: Alignment.centerLeft,
    height: 55,
    // color: Colors.white,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: isRounded
          ? BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(
                12,
              ),
            )
          : BorderRadius.circular(0),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
