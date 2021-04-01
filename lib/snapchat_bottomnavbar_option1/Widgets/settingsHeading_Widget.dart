import 'package:flutter/material.dart';

Widget settingsHeading(context, text) {
  return Container(
    decoration: BoxDecoration(color: Colors.grey[350]),
    // height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    // alignment: Alignment.center,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          color: Colors.blue,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
