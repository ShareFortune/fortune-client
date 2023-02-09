import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/view/pages/auth/login/login_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthButton extends HookConsumerWidget {
  const AuthButton({
    Key? key,
    required this.authType,
    required this.onTap,
  }) : super(key: key);

  final AuthType authType;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 60,
      child: Container(
        decoration: BoxDecoration(
          color: authType.color,
          borderRadius: BorderRadius.circular(6),
        ),
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => onTap(),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: Text(
                  authType.text,
                  style: TextStyle(
                    color: authType.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                child: SvgPicture.asset(
                  authType.iconPath,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
