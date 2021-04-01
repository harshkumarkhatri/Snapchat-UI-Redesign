import 'package:flutter/material.dart';

Widget myBitmoji() {
  return Align(
    alignment: Alignment.center,
    child: Container(
      height: 85,
      width: 75,
      child: Image(
        image: AssetImage("assets/image1.png"),
        fit: BoxFit.cover,
      ),
    ),
  );
}
