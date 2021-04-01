import 'package:flutter/material.dart';

Widget subscriptions_widget(headline, isVerified) {
  return Padding(
    padding: const EdgeInsets.only(right: 8.0),
    child: Container(
      // height: 50,
      width: 100,
      alignment: Alignment.bottomLeft,
      // color: Colors.amber[600],
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0, bottom: 4, right: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 3.0, left: 4),
              child: Text(
                headline,
                maxLines: 4,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  height: 1.3,
                ),
              ),
            ),
            isVerified
                ? Padding(
                    padding: const EdgeInsets.only(left: 4.0, bottom: 2),
                    child: Container(
                      height: 14,
                      width: 14,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.yellow),
                      child: Icon(
                        Icons.star,
                        color: Colors.black,
                        size: 12,
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    ),
  );
}
