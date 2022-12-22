import 'package:flutter/material.dart';
import 'package:fortune_client/view/hooks/use_router.dart';
import 'package:fortune_client/view/pages/auth/login/components/auth_button.dart';
import 'package:fortune_client/view/pages/auth/login/login_state.dart';
import 'package:fortune_client/view/pages/auth/login/login_view_model.dart';
import 'package:fortune_client/view/widgets/dialog.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginViewModelProvider);
    final viewModel = ref.watch(loginViewModelProvider.notifier);
    final router = useRouter();

    return state.when(
      data: (_) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Column(
                children: [
                  const Gap(30),
                  GestureDetector(
                    /// DEBUG: ダミーログインAPI
                    onDoubleTap: () async {
                      final result = viewModel.toggleDebugMode();
                      if (result != null) {
                        await showDebugDialog(context, result);
                      }
                    },
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
                      await viewModel.onTapLoginBtn(AuthType.apple, router);
                    },
                  ),
                  const Gap(30),
                  AuthButton(
                    authType: AuthType.google,
                    onTap: () async {
                      await viewModel.onTapLoginBtn(AuthType.google, router);
                    },
                  ),
                  const Gap(30),
                  AuthButton(
                    authType: AuthType.twitter,
                    onTap: () async {
                      await viewModel.onTapLoginBtn(AuthType.twitter, router);
                    },
                  ),
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
            ),
          ),
        ),
      ),
      loading: () => const Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  showDebugDialog(BuildContext context, bool result) async {
    await showInfoDialog(
      context,
      'ダミーログインAPIを使用: $result',
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}