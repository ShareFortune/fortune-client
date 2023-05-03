import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_indicator/loading_indicator.dart';

Widget loadingWidget() {
  return const Center(
    child: CircularProgressIndicator(),
  );
}

class Loader extends HookConsumerWidget {
  const Loader({Key? key}) : super(key: key);

  double get indicatorSize => 50;
  double gapHeight(double maxHeight) => maxHeight / 2 - indicatorSize / 2;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            Gap(gapHeight(MediaQuery.of(context).size.height)),
            SizedBox(
              height: indicatorSize,
              width: indicatorSize,
              child: LoadingIndicator(
                indicatorType: Indicator.circleStrokeSpin,
                colors: [theme.appColors.primary],
                strokeWidth: 3,
                backgroundColor: Colors.transparent,
              ),
            ),
          ],
        );
      },
    );
  }
}
