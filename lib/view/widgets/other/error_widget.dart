import 'package:flutter/material.dart';
import 'package:fortune_client/util/logger/logger.dart';

Widget errorWidget(e, stk) {
  // logger.e(e);
  return Material(
    child: Center(
      child: Text(
        e.toString(),
      ),
    ),
  );
}
