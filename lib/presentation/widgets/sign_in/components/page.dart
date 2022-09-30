import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInPageComponent extends StatelessWidget {
  const SignInPageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(50, 54, 50, 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: (() {}),
                child: const Text("次へ"),
              ),
              const SizedBox(height: 100),
              SignInButton(
                Buttons.AppleDark,
                onPressed: () {},
              ),
              SignInButton(
                Buttons.Google,
                onPressed: () {},
              ),
              SignInButton(
                Buttons.Facebook,
                onPressed: () {},
              ),
              SignInButton(
                Buttons.Twitter,
                onPressed: () {},
              ),
              const SizedBox(height: 50),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                        text: '登録すると', style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: 'プライバシーポリシー',
                        style: const TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                    const TextSpan(
                        text: 'に同意したものとみなされます。',
                        style: TextStyle(color: Colors.black))
                  ],
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
