import 'package:flutter/material.dart';

Widget friendsMyStory() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 4.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Text(
            "Friends",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          // height: 30,
          // width: 80,
          decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 3.0, bottom: 3, left: 3, right: 6),
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.grey,
                ),
                Text(
                  "My Story",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
