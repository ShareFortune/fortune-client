import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  const Skeleton({
    super.key,
    required this.width,
    required this.height,
    required this.shapeBorder,
  });

  factory Skeleton.rectangular(double height) {
    return Skeleton(
      width: double.infinity,
      height: height,
      shapeBorder: const RoundedRectangleBorder(),
    );
  }

  factory Skeleton.circular(double radius) {
    return Skeleton(
      width: radius * 2,
      height: radius * 2,
      shapeBorder: const CircleBorder(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[300]!,
      child: Container(
        height: height,
        width: width,
        decoration: ShapeDecoration(
          color: Colors.grey[400],
          shape: shapeBorder,
        ),
      ),
    );
  }
}
