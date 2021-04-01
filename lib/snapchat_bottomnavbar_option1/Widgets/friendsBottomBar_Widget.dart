import 'package:flutter/material.dart';

Widget friendsBottomNavBar() {
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 4,
              ),
              shape: BoxShape.circle,
              color: Colors.blue),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            4,
          ),
        ),
        // height: 14,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            "Friends",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    ],
  );
}
