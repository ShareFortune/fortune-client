import 'package:flutter/material.dart';

class RoomHeaderImageComponent extends StatelessWidget {
  const RoomHeaderImageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      alignment: Alignment.bottomRight,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img_recipe_no_892-1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.favorite_border,
          color: Colors.white,
        ),
      ),
    );
  }
}
