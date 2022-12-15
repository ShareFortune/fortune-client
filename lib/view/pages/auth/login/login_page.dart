import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/auth/login/components/auth_button.dart';
import 'package:fortune_client/view/pages/auth/login/login_state.dart';
import 'package:fortune_client/view/pages/auth/login/login_view_model.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(loginViewModelProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: [
              const Gap(30),
              GestureDetector(
                // DEBUG: ダミーログインAPI
                onDoubleTap: () {},
                child: const Text(
                  "Fortune",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
              const Gap(80),
              AuthButton(
                authType: AuthType.apple,
                onTap: () async {
                  await viewModel.loginWithSns(AuthType.apple);
                },
              ),
              const Gap(30),
              AuthButton(
                authType: AuthType.google,
                onTap: () async {
                  await viewModel.loginWithSns(AuthType.google);
                },
              ),
              const Gap(30),
              AuthButton(
                authType: AuthType.line,
                onTap: () async {
                  await viewModel.loginWithSns(AuthType.line);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
