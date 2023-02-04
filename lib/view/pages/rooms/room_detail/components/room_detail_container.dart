import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/base/room/room.dart';
import 'package:fortune_client/data/model/base/tag/tag.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/tag_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomDetailContainer extends HookConsumerWidget {
  const RoomDetailContainer(this.room, {super.key});

  final Room room;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    /// 開催場所
    final address = _basicInfo(
      theme,
      LocaleKeys.data_room_address_title.tr(),
      room.address.text,
    );

    /// 募集人数
    final membersNum = _basicInfo(
      theme,
      LocaleKeys.data_room_membersNum_title.tr(),
      "${room.membersNum}人",
    );

    /// タグ
    final tags = _roomInfo(
      theme,
      LocaleKeys.data_room_tags_title.tr(),
      _tagsWidget(theme, room.tags),
    );

    /// 説明
    final explanation = _roomInfo(
      theme,
      "説明",
      Text("ルームの説明・ルームの説明・ルームの説明・ルームの説明・ルームの説明・ルームの説明・ルームの説明・ルームの説明・ルームの説明・",
          style: theme.textTheme.h30),
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 詳細
          address,
          const Gap(20),
          membersNum,
          const Gap(50),

          /// タグ
          tags,
          const Gap(50),

          /// テキスト
          explanation,
        ],
      ),
    );
  }

  _roomInfo(AppTheme theme, String title, Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: theme.textTheme.h30.bold()),
        const Gap(15),
        child,
      ],
    );
  }

  Widget _tagsWidget(AppTheme theme, List<Tag>? tags) {
    if (tags != null) {
      return Wrap(
        spacing: 10,
        runSpacing: 10,
        children: tags.map((e) {
          return TagWidget(value: e.name);
        }).toList(),
      );
    } else {
      return const Text("指定なし");
    }
  }

  _basicInfo(AppTheme theme, String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.h30.bold(),
        ),
        const Gap(5),
        Text(value),
      ],
    );
  }
}
