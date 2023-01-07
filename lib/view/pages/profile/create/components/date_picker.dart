import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

Future<DateTime?> datePicker(BuildContext context) async {
  return await DatePicker.showDatePicker(
    context,
    showTitleActions: true,
    minTime: DateTime(1900, 1, 1),
    maxTime: DateTime(2049, 12, 31),
    currentTime: DateTime.now(),
    locale: LocaleType.jp,
  );
}
