import 'package:flutter/material.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/pages/common/bottom_sheet/components/bottom_sheet_menu_item.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomActionsBottomSheet extends HookConsumerWidget {
  const RoomActionsBottomSheet(this.roomTitle, {super.key});

  final String roomTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      color: Colors.transparent,
      alignment: Alignment.bottomCenter,
      child: Material(
        color: const Color(0xFFf7f7f5),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Gap(30),
              Row(
                children: [
                  const CircleAvatar(radius: 24),
                  const Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        roomTitle,
                        style: theme.textTheme.h40
                            .paint(theme.appColors.subText1)
                            .bold(),
                      ),
                      Text(
                        "デッドライン",
                        style: theme.textTheme.h30.paint(
                          theme.appColors.subText2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(20),
              BottomSheetMenuItem(
                theme: theme,
                title: "リンクをコピー",
                iconPath: Assets.images.icons.iconLink.path,
                onPressed: () {},
              ),
              const Gap(20),
              BottomSheetMenuItem.first(
                theme: theme,
                title: "ルームを編集する",
                iconPath: Assets.images.icons.iconLink.path,
                onPressed: () {},
              ),
              BottomSheetMenuItem.last(
                theme: theme,
                title: "ルームを削除する",
                iconPath: Assets.images.icons.iconLink.path,
                color: theme.appColors.error,
                onPressed: () {},
              ),
              const Gap(50),
            ],
          ),
        ),
      ),
    );
  }
}
