import 'package:flutter/material.dart';

Widget storyWidget(activeStories) {
  return Padding(
    padding: const EdgeInsets.only(left: 8),
    child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          // color: Colors.red,
          border: activeStories
              ? Border.all(color: Colors.black, width: 2)
              : Border.all(color: Colors.white, width: 0),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
          ),
        )),
  );
}
