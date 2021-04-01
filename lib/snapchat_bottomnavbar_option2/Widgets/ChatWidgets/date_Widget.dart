import 'package:flutter/material.dart';

Widget date(date) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 2,
    ),
    child: Container(
      child: Center(
        child: Text(
          date,
          style: TextStyle(
              color: Colors.grey.withOpacity(0.8),
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
      ),
    ),
  );
}
