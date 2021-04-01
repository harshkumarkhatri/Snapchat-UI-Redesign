import 'package:flutter/material.dart';

Widget privateStory() {
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
                padding: const EdgeInsets.only(left: 8.0, right: 6),
                child: Icon(
                  Icons.lock_outline,
                  color: Colors.grey[350],
                  size: 30,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Text("Create a Private Story",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0, top: 4),
                    child: Text("A Story for a specific friend to see!",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.cancel_outlined,
              color: Colors.grey[350],
              size: 30,
            ),
          ),
        ],
      ),
    ),
  );
}
