import 'package:flutter/material.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';

class MessageRoomListTile extends StatelessWidget {
  const MessageRoomListTile({
    super.key,
    required this.theme,
    required this.title,
    required this.postedDate,
    required this.body,
    required this.onTap,
  });

  final AppTheme theme;

  /// ルームタイトル
  final String title;

  /// ボディ
  final String? body;

  /// 最終投稿日時
  final String? postedDate;

  /// タイルタップ
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            const CircleAvatar(radius: 26),
            const Gap(15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: theme.textTheme.h30
                            .paint(
                              theme.appColors.subText1,
                            )
                            .bold(),
                      ),
                      Text(
                        postedDate ?? "",
                        style: theme.textTheme.h10.paint(
                          theme.appColors.subText3,
                        ),
                      ),
                    ],
                  ),
                  const Gap(3),
                  Text(
                    body ?? "",
                    style: theme.textTheme.h20.paint(
                      theme.appColors.subText3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
