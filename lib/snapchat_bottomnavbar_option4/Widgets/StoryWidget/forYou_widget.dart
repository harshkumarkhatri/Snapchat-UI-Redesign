import 'package:flutter/material.dart';

Widget forYou_widget(headline, isVerified) {
  return Container(
    alignment: Alignment.bottomLeft,
    // color: Colors.amber[600],
    decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(4)),
    child: Padding(
      padding: const EdgeInsets.only(left: 6.0, bottom: 6, right: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headline,
            maxLines: 4,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 21,
              height: 1.4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0, bottom: 2, top: 2),
            child: Row(
              children: [
                isVerified
                    ? Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.yellow),
                        child: Icon(
                          Icons.star,
                          color: Colors.black,
                          size: 12,
                        ),
                      )
                    : Container(),
                Padding(
                  padding: isVerified
                      ? EdgeInsets.only(left: 4)
                      : EdgeInsets.only(left: 0),
                  child: Text(
                    "Today",
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
