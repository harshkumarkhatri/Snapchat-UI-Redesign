import 'package:flutter/material.dart';
import 'package:snapchat_bottomnavbar_implementation/snapchat_bottomnavbar_option2/camera_Screen.dart';

Widget bottomFriendsDetails(context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      height: 50,
      color: Colors.red,
      child: Row(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CameraScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(Icons.camera_alt),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 40,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(
                        18,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        "Send a Chat",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4),
                child: Icon(Icons.emoji_emotions),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4),
                child: Icon(Icons.image),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 4),
                child: Icon(
                  Icons.radio_button_checked,
                ),
              )
            ]),
          ),
        ],
      ),
    ),
  );
}
