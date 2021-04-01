import 'package:flutter/material.dart';

Widget ghostModeItemMaoSettings() {
  return Container(
    padding: EdgeInsets.only(top: 12, bottom: 12, left: 15, right: 15),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ghost Mode",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                  "When this is enabled, your friends can't see your location",
                  style: TextStyle(
                    letterSpacing: 0.2,
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  )),
            )
          ],
        ),
        Spacer(),
        Container(
          height: 34,
          width: 34,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(
              4,
            ),
          ),
        ),
      ],
    ),
  );
}
