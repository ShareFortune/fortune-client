import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/pages/rooms/participating_room_list/participating_room_list_state.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/member_icons.dart';
import 'package:gap/gap.dart';

class GuestRoomCardWidget extends ConsumerWidget {
  const GuestRoomCardWidget(this.room, {super.key});

  final GuestRoomListItemState room;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: theme.appColors.divider),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: theme.appColors.shadow,
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              /// ホストアイコン
              _hostIcon(theme),
              const Gap(15),

              Expanded(
                child: Column(
                  children: [
                    /// タイトル
                    _title(theme),

                    const Gap(10),

                    /// メンバー
                    memberIconsWidget(15, ["", ""]),
                  ],
                ),
              )
            ],
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// 場所
              _place(theme),

              /// ボタン
              room.state ? _onState(theme) : _offState(theme),
            ],
          )
        ],
      ),
    );
  }

  _hostIcon(AppTheme theme) {
    return CircleAvatar(
      radius: 30,
      // backgroundColor: theme.appColors.primary,
      backgroundImage: Assets.images.insta4.provider(),
    );
  }

  _title(AppTheme theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          // room.title,
          "若者の集い",
          style: theme.textTheme.h40.bold(),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {},
          icon: const Icon(Icons.more_vert_outlined),
        ),
      ],
    );
  }

  _place(AppTheme theme) {
    return Row(
      children: [
        Icon(
          Icons.place_outlined,
          size: 24,
          color: theme.appColors.iconBtn,
        ),
        const Gap(10),
        Text(
          "東京都・横浜市",
          style: theme.textTheme.h30,
        ),
      ],
    );
  }

  _onState(AppTheme theme) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: theme.appColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        textStyle: theme.textTheme.h20.bold(),
      ),
      child: const Text("メッセージ"),
    );
  }

  _offState(AppTheme theme) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: theme.appColors.offState,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        textStyle: theme.textTheme.h20.bold(),
      ),
      child: const Text("リクエスト中"),
    );
  }
}
