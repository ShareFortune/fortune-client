import 'package:flutter/material.dart';
import 'package:fortune_client/util/logger/logger.dart';

class UserIconWidget extends StatelessWidget {
  const UserIconWidget(
    this.url, {
    Key? key,
    this.radius = 15,
  }) : super(key: key);

  final double radius;
  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        url,
        width: radius * 2,
        height: radius * 2,
        fit: BoxFit.cover,
        errorBuilder: (_, error, __) {
          logger.e(error);
          return const Icon(
            Icons.error,
            color: Colors.red,
          );
        },
      ),
    );
  }
}