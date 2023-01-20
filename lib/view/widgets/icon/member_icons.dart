import 'package:flutter/material.dart';
import 'package:fortune_client/view/widgets/icon/circle_icon.dart';

Widget memberIconsWidget(double radius, List icons) {
  final diameter = radius * 2;
  const overlap = 5;

  return Stack(
    children: List.generate(icons.length, (index) {
      double w;
      if (index == 0) {
        w = diameter;
      } else {
        /// 初期値 = 直径 * index + 1
        ///
        /// ex
        /// 直径 = 30, index = 2
        /// 初期値 = 60 : w 60から配置する
        final initial = diameter * (index + 1);

        /// 直径の1/x分アイコンを重ねて表示
        /// w = 初期値 - 直径の1/x * index
        /// 前回分の差分も含めるため最後にindexを乗算
        ///
        /// ex
        /// 直径 = 30, index = 3, x = 3
        /// w = 60 - (30 / 3)
        /// w = 50 : 50の位置に配置
        w = initial - (diameter / overlap) * index;
      }

      return Container(
        width: w,
        alignment: Alignment.centerRight,
        child: circleIconWidget(radius, false),
      );
    }),
  );
}
