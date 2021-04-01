import 'package:flutter/material.dart';

Widget discoverSubscriptions_widget(headline) {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: Container(
      height: 50,
      width: 95,
      alignment: Alignment.bottomLeft,
      // color: Colors.amber[600],
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0, bottom: 4, right: 2),
        child:  Text(
          headline,
          maxLines: 4,
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color:Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 14,
            height: 1.3,
          ),
        ),
      ),
    ),
  );
}
