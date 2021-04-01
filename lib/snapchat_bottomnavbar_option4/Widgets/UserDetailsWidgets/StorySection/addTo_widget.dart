import 'package:flutter/material.dart';

Widget addTo(text) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
    child: Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          12,
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black38,
              offset: Offset(0, 2),
              blurRadius: 1,
              spreadRadius: 1),
        ],
      ),
      child: Row(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.blue,
                  size: 36,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text("Add to $text Story",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              )
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.more_horiz,
              color: Colors.grey[350],
              size: 30,
            ),
          ),
        ],
      ),
    ),
  );
}
