import 'package:flutter/material.dart';

Widget trendingLEnses_userName(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              // width: 120,
              child: Text(
                "Dog Lens",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        Text(
          "Snapchat",
          style: TextStyle(
            color: Colors.grey[350],
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}
