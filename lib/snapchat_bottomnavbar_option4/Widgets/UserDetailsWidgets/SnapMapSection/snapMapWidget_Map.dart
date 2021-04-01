import 'package:flutter/material.dart';

Widget snapMap_Map(context) {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
        child: Container(
          height: 145,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://map.snapchat.com/static/sharepreview.jpg")),
            color: Colors.black38,
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
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
        child: Container(
          height: 145,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12,
              ),
              color: Colors.black54),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Tap to explore Snap Map",
                style: TextStyle(
                  letterSpacing: 0.6,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(
                      14,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 6, bottom: 6, left: 18.0, right: 18),
                    child: Text(
                      "Enter",
                      style: TextStyle(
                        letterSpacing: 0.5,
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ],
  );
}
