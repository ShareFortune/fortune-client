import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class NotificationButtonComponent extends StatelessWidget {
  const NotificationButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Badge(
      badgeContent: const Text(
        '3',
        style: TextStyle(color: Colors.white),
      ),
      badgeColor: Colors.pink, //数字の背景色
      position: BadgePosition.topEnd(top: 0, end: 0),
      child: IconButton(
        icon: const Icon(
          Icons.notifications,
          size: 30,
          color: Colors.black,
        ),
        onPressed: () {},
      ), //位置
    );
  }
}
