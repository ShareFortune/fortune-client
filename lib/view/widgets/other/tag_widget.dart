import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  final String value;
  final Color? backGraundColor;
  final Color? borderColor;
  final Color? textColor;
  final VoidCallback? onTap;

  const TagWidget({
    super.key,
    required this.value,
    this.backGraundColor,
    this.borderColor,
    this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return _build(
      backGraundColor: backGraundColor ?? Colors.white,
      borderColor: borderColor ?? Colors.grey,
      textColor: textColor ?? Colors.grey,
    );
  }

  InkWell _build({
    required Color backGraundColor,
    required Color borderColor,
    required Color textColor,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backGraundColor,
          border: Border.all(width: 1, color: borderColor),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: Text(
            "# $value",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
