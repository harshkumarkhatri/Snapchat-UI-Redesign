import 'package:flutter/material.dart';

Widget friendSection(text, icon) {
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
                  icon,
                  color: Colors.grey[350],
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(text,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              )
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey[350],
              size: 30,
            ),
          ),
        ],
      ),
    ),
  );
}
