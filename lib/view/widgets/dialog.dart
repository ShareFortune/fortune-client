import 'package:flutter/cupertino.dart';

Future<void> showInfoDialog(
  BuildContext context,
  String content, {
  VoidCallback? onPressed,
}) async {
  showCupertinoDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        content: Text(content),
        actions: [
          CupertinoDialogAction(
            onPressed: onPressed,
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}
