import 'package:flutter/material.dart';

Widget forYou_widget(headline) {
  return Container(
    alignment: Alignment.bottomLeft,
    // color: Colors.amber[600],
    decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(4)),
    child: Padding(
      padding: const EdgeInsets.only(left: 6.0, bottom: 6, right: 2),
      child: Text(
        headline,
        maxLines: 4,
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 21,
          height: 1.4,
        ),
      ),
    ),
  );
}
