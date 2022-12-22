import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/material.dart';

BottomPicker bottomPicker<T extends Enum>(
  List<T> items,
  List<String> itemsText,
  Function(T) changeGender,
) {
  return BottomPicker(
    items: itemsText.map((e) => Text(e)).toList(),
    title: "",
    buttonText: '完了',
    buttonTextStyle: const TextStyle(
      color: Colors.white,
    ),
    buttonSingleColor: Colors.pink,
    pickerTextStyle: const TextStyle(
      color: Colors.black,
      fontSize: 20,
    ),
    onSubmit: (p0) {
      changeGender(items[p0]);
    },
  );
}
