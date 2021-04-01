import 'package:flutter/material.dart';

Widget usernameWidget(name) {
  return Padding(
    padding: EdgeInsets.only(top: 10, bottom: 10),
    child: Text(
      name,
      style: TextStyle(
        color: Colors.black,
        fontSize: 17,letterSpacing: 0.5,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
