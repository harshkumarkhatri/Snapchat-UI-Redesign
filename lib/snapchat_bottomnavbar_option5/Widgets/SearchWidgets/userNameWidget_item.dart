import 'package:flutter/material.dart';

Widget userName(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 120,
              child: Text(
                "Jenifer Ankiston",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                color: Colors.black,
                image: DecorationImage(
                    image: NetworkImage(
                      "https://vectorified.com/images/snapchat-icon-png-35.png",
                    ),
                    fit: BoxFit.cover),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        Text(
          "jeniferrrr",
          style: TextStyle(
            color: Colors.grey.withOpacity(0.8),
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}
