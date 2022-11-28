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

Widget circleIconWidget(double radius) {
  return CircleAvatar(
    radius: radius,
    backgroundColor: Colors.white,
    child: CircleAvatar(
      radius: radius - 1,
      backgroundImage: images[math.Random().nextInt(images.length)].provider(),
    ),
  );
}
