import 'package:flutter/material.dart';

Widget nextButton(bool clickable, Function() onPressed) {
  final bgColor = clickable ? const Color(0xFFC782E4) : const Color(0xFFF5F5F5);
  final textColor = clickable ? Colors.white : Colors.black;

  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: bgColor,
      padding: const EdgeInsets.symmetric(vertical: 20),
      fixedSize: const Size.fromWidth(double.maxFinite),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    ),
    onPressed: onPressed,
    child: Text(
      "次へ",
      style: TextStyle(
        fontSize: 16,
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
