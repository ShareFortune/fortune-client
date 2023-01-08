import 'package:flutter/material.dart';

Widget errorWidget(e, msg) {
  return Scaffold(
    body: SafeArea(
      child: Center(
        child: Text(
          e.toString(),
        ),
      ),
    ),
  );
}
