import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RoomCardWidget extends StatelessWidget {
  const RoomCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: const Color.fromRGBO(0, 0, 0, 0.1),
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          title(),
          const Gap(15),
          content(),
        ],
      ),
    );
  }

  title() {
    return Row(
      children: [
        /// ホスト
        const CircleAvatar(
          radius: 30,
          backgroundColor: Colors.pink,
        ),
        const Gap(15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// ルームタイトル
            const Text(
              "渋谷で飲み会しませんか？",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(10),
            Row(
              children: [
                members(15),

                /// 半径分開ける
                const Gap(15),
                const Text(
                  "残り3人",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  content() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(
              Icons.place_outlined,
              size: 24,
              color: Color.fromRGBO(0, 0, 0, 0.5),
            ),
            Gap(10),
            Text(
              "東京都・渋谷区",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.8),
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          icon: const Icon(
            size: 24,
            color: Color.fromRGBO(0, 0, 0, 0.5),
            Icons.favorite_border,
          ),
        ),
      ],
    );
  }

  members(double radius) {
    final diameter = radius * 2;
    return Stack(
      children: List.generate(5, (index) {
        double w;
        if (index == 0) {
          w = diameter;
        } else {
          w = diameter * (index + 1) - (diameter / 3) * index;
        }

        return Container(
          width: w,
          alignment: Alignment.centerRight,
          child: icon(radius),
        );
      }),
    );
  }

  icon(double radius) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: radius - 1,
        backgroundColor: Colors.grey,
      ),
    );
  }
}
