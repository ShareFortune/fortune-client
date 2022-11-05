import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({super.key, required this.iconSize});

  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      child: CircleAvatar(
        radius: iconSize,
        backgroundImage: const NetworkImage(
            "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png"),
        child: Align(
          alignment: const Alignment(0.9, 0.9),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: iconSize / 4,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: (iconSize / 4) - 3,
                backgroundColor: Colors.pink,
              ),
              Icon(
                Icons.add,
                color: Colors.white,
                size: iconSize / 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
