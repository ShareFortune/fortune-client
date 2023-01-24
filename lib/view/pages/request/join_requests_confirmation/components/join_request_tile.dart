import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class JoinRequestTile extends StatelessWidget {
  const JoinRequestTile({
    super.key,
    required this.theme,
    required this.name,
    required this.info,
    required this.onTap,
  });

  final AppTheme theme;
  final String name;
  final String info;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      leading: const CircleAvatar(radius: 30),
      title: Text(name),
      subtitle: Text(info),
      trailing: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: theme.appColors.primary,
          textStyle: theme.textTheme.h30.bold(),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        child: Text(
          "許可",
          style: theme.textTheme.h30
              .bold()
              .merge(const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
