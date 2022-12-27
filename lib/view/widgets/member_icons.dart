import 'package:flutter/material.dart';
import 'package:fortune_client/view/widgets/circle_icon.dart';

Widget memberIconsWidget(double radius, List icons) {
  final diameter = radius * 2;
  return Stack(
    children: List.generate(icons.length, (index) {
      double w;
      if (index == 0) {
        w = diameter;
      } else {
        w = diameter * (index + 1) - (diameter / 3) * index;
      }

      return Container(
        width: w,
        alignment: Alignment.centerRight,
        child: circleIconWidget(radius, false),
      );
    }),
  );
}
