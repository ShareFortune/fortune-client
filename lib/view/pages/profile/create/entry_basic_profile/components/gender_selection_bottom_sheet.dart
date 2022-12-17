import 'package:flutter/material.dart';
import 'package:bottom_picker/bottom_picker.dart';

class GenderSelectionBottomSheet {
  show(BuildContext context) async {
    return BottomPicker(
      items: const [
        Text('男性'),
        Text('女性'),
        Text('その他'),
      ],
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
    ).show(context);
  }
}
