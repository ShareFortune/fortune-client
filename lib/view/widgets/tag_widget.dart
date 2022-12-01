import 'package:flutter/material.dart';

tagWidget(String value) {
  return Container(
    decoration: BoxDecoration(
      color: const Color.fromRGBO(0, 0, 0, 0.08),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      child: Text(
        value,
        style: const TextStyle(fontSize: 16),
      ),
    ),
  );
}
