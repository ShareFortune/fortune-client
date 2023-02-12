import 'package:flutter/material.dart';

class MemberIcons extends StatelessWidget {
  const MemberIcons({
    super.key,
    required this.urls,
    this.radius = 15,
  });

  final List<String> urls;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final diameter = radius * 2;
    const overlap = 5;

    return Stack(
      children: List.generate(urls.length, (index) {
        double w;
        if (index == 0) {
          w = diameter;
        } else {
          /// 初期値 = 直径 * index + 1
          final initial = diameter * (index + 1);

          /// 直径の1/x分アイコンを重ねて表示
          /// w = 初期値 - 直径の1/x * index
          /// 前回分の差分も含めるため最後にindexを乗算
          w = initial - (diameter / overlap) * index;
        }

        return Container(
          width: w,
          alignment: Alignment.centerRight,
          child: CircleAvatar(
            radius: radius,
            backgroundImage: Image.network(
              urls[index],
              fit: BoxFit.cover,
            ).image,
          ),
        );
      }),
    );
  }
}
