import 'package:flutter/material.dart';

Widget loadingWidget() {
  return const Scaffold(
    body: SafeArea(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    ),
  );
}
