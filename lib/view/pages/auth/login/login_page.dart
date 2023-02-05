import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/auth/login/components/auth_button.dart';
import 'package:fortune_client/view/pages/auth/login/login_state.dart';
import 'package:fortune_client/view/pages/auth/login/login_view_model.dart';
import 'package:fortune_client/view/widgets/dialog/Info_dialog.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginViewModelProvider);
    final viewModel = ref.watch(loginViewModelProvider.notifier);

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
                      // final result = await viewModel.toggleDebugMode();
                      // // ignore: use_build_context_synchronously
                      // if (result != null) showDebugDialog(context, result);
                    },
                    child: Text(
                      LocaleKeys.loginPage_title.trim(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  const Gap(80),
                  AuthButton(
                    authType: AuthType.apple,
                    onTap: () async {
                      await viewModel.onTapLoginBtn(AuthType.apple);
                    },
                  ),
                  const Gap(30),
                  AuthButton(
                    authType: AuthType.google,
                    onTap: () async {
                      await viewModel.onTapLoginBtn(AuthType.google);
                    },
                  ),
                  const Gap(30),
                  AuthButton(
                    authType: AuthType.twitter,
                    onTap: () async {
                      await viewModel.onTapLoginBtn(AuthType.twitter);
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
      error: errorWidget,
      loading: loadingWidget,
    );
  }

  showDebugDialog(BuildContext context, bool result) async {
    await showInfoDialog(
      context,
      'ダミーログインAPIを使用: $result',
      onPressed: () {
        context.router.pop();
      },
    );
  }
}
