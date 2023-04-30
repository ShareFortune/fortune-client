import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:fortune_client/gen/assets.gen.dart';

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

class CircleIconWidget extends StatelessWidget {
  final double radius;
  final String url;

  const CircleIconWidget({
    super.key,
    required this.radius,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: Image.network(url, fit: BoxFit.cover).image,
    );
  }
}
