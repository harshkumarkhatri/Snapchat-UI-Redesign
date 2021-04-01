import 'package:flutter/material.dart';

Widget navigationBottomNavBar() {
  return Stack(
    alignment: Alignment.topRight,
    children: [
      Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
        child: Icon(
          Icons.navigation_outlined,
          color: Colors.white,
        ),
      ),
      Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          color: Colors.pink,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            "1",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ),
    ],
  );
}
