import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:fortune_client/gen/assets.gen.dart';

final images = [
  Assets.images.insta2,
  Assets.images.insta3,
  Assets.images.insta4,
  Assets.images.insta5,
  Assets.images.thinder,
];

Widget circleIconWidget(double radius, bool isMan) {
  return CircleAvatar(
    radius: radius,
    backgroundColor: Colors.white,
    child: circleIcon(
      radius: radius,
      isMan: isMan,
      image: images[math.Random().nextInt(images.length)].provider(),
    ),
  );
}

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
  final bool isMan;
  final ImageProvider? image;

  const CircleIconWidget({
    super.key,
    this.isMan = false,
    this.image,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    const lineWidth = 1;
    const manColor = Colors.blue;
    const womanColor = Colors.purple;
    final Color outsideColor = isMan ? manColor : womanColor;

    return CircleAvatar(
      radius: radius,
      backgroundColor: outsideColor,
      child: CircleAvatar(
        radius: radius - lineWidth,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: radius - lineWidth * 2,
          backgroundImage:
              images[math.Random().nextInt(images.length)].provider(),
        ),
      ),
    );
  }
}
