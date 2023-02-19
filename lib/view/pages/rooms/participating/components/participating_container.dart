// ignore_for_file: library_private_types_in_public_api

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/rooms/participating/components/participating_room_as_guest.dart';
import 'package:fortune_client/view/pages/rooms/participating/components/participating_room_as_host.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_type.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ParticipatingContainer extends HookConsumerWidget {
  const ParticipatingContainer._({
    required this.type,
    required this.child,
  });

  final ParticipatingType type;
  final Widget child;

  /// ホストルーム
  factory ParticipatingContainer.host(
    AsyncValue<List<GetV1RoomsHostResponseRoom>> asyncRooms,
  ) {
    return ParticipatingContainer._(
      type: ParticipatingType.host,
      child: AsyncValueWidget(
        data: asyncRooms,
        builder: (rooms) => ParticipatingRoomAsHost(rooms),
      ),
    );
  }

  /// ゲストルーム
  factory ParticipatingContainer.guest(
    AsyncValue<List<GetV1RoomsGuestResponseRoom>> asyncRooms,
  ) {
    return ParticipatingContainer._(
      type: ParticipatingType.guest,
      child: AsyncValueWidget(
        data: asyncRooms,
        builder: (rooms) => ParticipatingRoomAsGuest(rooms),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final viewModel = ref.watch(participatingViewModelProvider.notifier);

    return Container(
      color: theme.appColors.onBackground,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /// タイトル
          _containerTitle(theme),

          /// ルームリスト
          SizedBox(
            height: 235,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                child: child,
              ),
            ),
          ),

          /// 全て表示
          _showAllButton(
            theme,
            () => viewModel.navigateToParticipatingRoomList(type),
          ),
        ],
      ),
    );
  }

  /// コンテナのタイトル
  _containerTitle(AppTheme theme) {
    return Container(
      height: 50,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: theme.appColors.border1),
        ),
      ),
      child: Text(
        type.containerLabel,
        style: theme.textTheme.h30.paint(theme.appColors.subText1),
      ),
    );
  }

  /// 全て見るボタン
  _showAllButton(
    AppTheme theme,
    VoidCallback? onTap,
  ) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: theme.appColors.border1),
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleKeys.participating_room_list_page_action_showAll.tr(),
              style: theme.textTheme.h30.paint(
                onTap != null
                    ? theme.appColors.linkColor
                    : theme.appColors.subText3,
              ),
            ),
            const Icon(
              size: 16,
              Icons.arrow_forward_ios,
              color: Color(0xFFD9D9D9),
            ),
          ],
        ),
      ),
    );
  }
}
