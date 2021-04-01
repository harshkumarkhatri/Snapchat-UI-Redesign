import 'package:flutter/material.dart';

Widget moreItemsSendUsername(text1) {
  return Container(
    alignment: Alignment.centerLeft,
    height: 55,
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Center(child: Icon(Icons.send, color: Colors.white))),
        ],
      ),
    ),
  );
}
