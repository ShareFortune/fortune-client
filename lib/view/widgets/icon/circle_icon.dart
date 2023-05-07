import 'package:flutter/material.dart';

/// [radius] 画像の半径
Widget circleIcon({
  required double radius,
  required bool? isMan,
  required ImageProvider image,
}) {
  const lineWidth = 2;
  const manColor = Colors.blue;
  const womanColor = Colors.purple;
  final Color outsideColor;
  if (isMan != null) {
    outsideColor = isMan ? manColor : womanColor;
  } else {
    outsideColor = Colors.transparent;
  }

  return CircleAvatar(
    radius: radius + lineWidth * 2,
    backgroundColor: outsideColor,
    child: CircleAvatar(
      radius: radius + lineWidth,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: radius,
        backgroundImage: image,
      ),
    ),
  );
}
