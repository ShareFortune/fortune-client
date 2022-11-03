import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:fortune_client/presentation/view/pages/auth/sign_in/view_model.dart';

class SignInPageComponent extends ConsumerWidget {
  const SignInPageComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signInViewModelProvider);
    final viewModel = ref.watch(signInViewModelProvider.notifier);

    return state.when(
      data: (data) {
        return Scaffold(
          body: Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(50, 54, 50, 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 100),
                  SignInButton(
                    text: "Sign in with Apple",
                    Buttons.AppleDark,
                    onPressed: viewModel.signInWithApple(),
                  ),
                  SignInButton(
                    Buttons.Google,
                    onPressed: viewModel.signInWithGoogle(),
                  ),
                  SignInButton(
                    Buttons.Facebook,
                    onPressed: viewModel.signInWithFacebook(),
                  ),
                  const SizedBox(height: 50),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                            text: '登録すると',
                            style: TextStyle(color: Colors.black)),
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
      },
      error: (e, msg) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Text(
              e.toString(),
              // style: theme.textTheme.h30,
            ),
          ),
        ),
      ),
      loading: () => Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(
                // color: theme.appColors.primary,
                ),
          ),
        ),
      ),
    );
  }
}
