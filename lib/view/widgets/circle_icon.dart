import 'package:flutter/material.dart';

Widget circleIconWidget(double radius) {
  return CircleAvatar(
    radius: radius,
    backgroundColor: Colors.white,
    child: CircleAvatar(
      radius: radius - 1,
      backgroundColor: Colors.grey,
    ),
  );
}
