import 'package:flutter/material.dart';

class ProfileImagePageView extends StatelessWidget {
  const ProfileImagePageView(this.images, {super.key});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: PageView(
        children: images.whereType<String>().toList().map((image) {
          return AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.network(image, fit: BoxFit.cover).image,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
