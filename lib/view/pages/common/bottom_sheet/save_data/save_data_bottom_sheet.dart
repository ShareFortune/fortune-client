import 'package:flutter/material.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';

class SaveDataBottomSheet extends StatelessWidget {
  const SaveDataBottomSheet({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => sl<AppRouter>().pop(),
      child: Container(
        color: Colors.transparent,
        alignment: Alignment.bottomCenter,
        child: Material(
          color: const Color(0xFFf7f7f5),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(title),
                  TextButton(
                    onPressed: () {},
                    child: Text("保存"),
                  ),
                ],
              ),
              content,
            ],
          ),
        ),
      ),
    );
  }
}
