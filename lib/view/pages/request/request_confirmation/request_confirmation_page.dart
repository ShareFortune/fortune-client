import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/pages/request/request_confirmation/components/user_icon_widget.dart';
import 'package:gap/gap.dart';

class RequestConfirmationPage extends ConsumerWidget {
  const RequestConfirmationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("リクエスト"),
        titleTextStyle: theme.textTheme.h40
            .merge(TextStyle(color: theme.appColors.headline1))
            .bold(),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: _body(theme),
      ),
    );
  }

  Widget _body(AppTheme theme) {
    return Column(
      children: [
        _request(theme),
        _request(theme),
        _request(theme),
      ],
    );
  }

  Widget _request(AppTheme theme) {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: Row(
        children: [
          circleUserIconWidget(
            radius: 32,
            isMan: false,
            image: Assets.images.insta2.provider(),
          ),
          const Gap(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "あんな",
                    style: theme.textTheme.h40.bold(),
                  ),
                  const Gap(10),
                  Text(
                    "21歳",
                    style: theme.textTheme.h40.bold(),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.appColors.primary,
                      textStyle: theme.textTheme.h30.bold(),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: const Text("許可"),
                  ),
                  const Gap(10),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: theme.appColors.primary,
                      textStyle: theme.textTheme.h30.bold(),
                      side: BorderSide(color: theme.appColors.primary),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: const Text("拒否"),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
