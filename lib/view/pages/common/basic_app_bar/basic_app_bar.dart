import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/common/basic_app_bar/basic_app_bar_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/skeleton.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BasicAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const BasicAppBar({
    super.key,
    required this.title,
    this.isBorder = true,
    this.hieght = 140,
  });

  final String title;
  final double hieght;
  final bool isBorder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(basicAppBarViewModelProvider);
    final viewModel = ref.watch(basicAppBarViewModelProvider.notifier);

    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: hieght,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        titlePadding: const EdgeInsets.symmetric(horizontal: 30),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: theme.textTheme.h60
                      .merge(const TextStyle(color: Colors.black))
                      .bold(),
                ),
                state.maybeWhen(
                  orElse: () => const Skeleton.circular(width: 30, height: 30),
                  data: (data) {
                    return CircleAvatar(
                      radius: 15,
                      backgroundImage: data.image,
                    );
                  },
                ),
              ],
            ),
            const Gap(15),
            if (isBorder)
              const Divider(
                height: 1,
                thickness: 1,
                color: Color(0xFFF3F3F3),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(hieght);
}
