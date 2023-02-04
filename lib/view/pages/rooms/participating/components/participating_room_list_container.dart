// ignore_for_file: library_private_types_in_public_api

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_guest/get_v1_rooms_guest.dart';
import 'package:fortune_client/data/model/rooms/get_v1_rooms_host/get_v1_rooms_host.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/rooms/participating/components/guest_room_card.dart';
import 'package:fortune_client/view/pages/rooms/participating/components/host_room_card.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum _RoomType {
  host,
  guest,
}

extension RoomTypeEx on _RoomType {
  static final names = {
    _RoomType.host: LocaleKeys.participating_room_list_page_host_title.tr(),
    _RoomType.guest: LocaleKeys.participating_room_list_page_guest_title.tr(),
  };

  static final adviceTexts = {
    _RoomType.host: LocaleKeys.participating_room_list_page_host_advice.tr(),
    _RoomType.guest: LocaleKeys.participating_room_list_page_guest_advice.tr(),
  };

  static final navigationTexts = {
    _RoomType.host:
        LocaleKeys.participating_room_list_page_host_navigation.tr(),
    _RoomType.guest:
        LocaleKeys.participating_room_list_page_guest_navigation.tr(),
  };

  String get name => names[this]!;
  String get navigationText => navigationTexts[this]!;
  String get adviceText => adviceTexts[this]!;
}

class ParticipatingRoomListContainer<T> extends HookConsumerWidget {
  const ParticipatingRoomListContainer._(this.roomType, this.roomsAsync);

  final _RoomType roomType;
  final AsyncValue<List<T>> roomsAsync;

  factory ParticipatingRoomListContainer.host(rooms) {
    return ParticipatingRoomListContainer._(_RoomType.host, rooms);
  }

  factory ParticipatingRoomListContainer.guest(rooms) {
    return ParticipatingRoomListContainer._(_RoomType.guest, rooms);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    /// タイトル
    late Widget titleWidgetAsync;

    /// ルームリストコンテナ
    late Widget roomListContainerAsync;

    /// 全て表示ボタン
    late Widget showAllButtonAsync;

    roomsAsync.when(
      data: (data) {
        titleWidgetAsync = _titleWidget(theme, roomType.name, data.length);
        if (data.isEmpty) {
          roomListContainerAsync = _roomContainerWithNoRooms(theme);
          showAllButtonAsync = _showAllButton(theme, null);
        } else {
          roomListContainerAsync = _roomListContainer(data);
          showAllButtonAsync = _showAllButton(theme, () {});
        }
      },
      error: (e, stk) {
        titleWidgetAsync = _titleWidget(theme, roomType.name, 0);
        roomListContainerAsync = errorWidget(e, stk);
        showAllButtonAsync = _showAllButton(theme, null);
      },
      loading: () {
        titleWidgetAsync = _titleWidget(theme, roomType.name, 0);
        roomListContainerAsync = loadingWidget();
        showAllButtonAsync = _showAllButton(theme, null);
      },
    );

    return Container(
      color: theme.appColors.onBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// タイトル
          titleWidgetAsync,

          /// ルームリスト
          SizedBox(
            height: 235,
            child: roomListContainerAsync,
          ),

          /// 全て表示
          showAllButtonAsync,
        ],
      ),
    );
  }

  _titleWidget(AppTheme theme, String title, int roomsNum) {
    /// タイトルスタイル
    final textStyle = theme.textTheme.h30.paint(theme.appColors.subText1);

    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: theme.appColors.border1),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: textStyle),
          if (roomsNum > 0) Text("  $roomsNum", style: textStyle),
        ],
      ),
    );
  }

  _showAllButton(AppTheme theme, VoidCallback? onTap) {
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

  _roomListContainer(List<T> rooms) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Row(
          children: rooms.map((e) {
            Widget card = Container();
            switch (roomType) {
              case _RoomType.host:
                card = HostRoomCard(e as GetV1RoomsHostResponseRoom);
                break;
              case _RoomType.guest:
                card = GuestRoomCard(e as GetV1RoomsGuestResponseRoom);
                break;
            }
            return Row(children: [card, const Gap(10)]);
          }).toList(),
        ),
      ),
    );
  }

  _roomContainerWithNoRooms(AppTheme theme) {
    /// アドバイステキスト
    final adviceTextColor = theme.appColors.subText3;
    final adviceTextStyle = theme.textTheme.h30.paint(adviceTextColor);

    /// ナビゲーションテキスト
    final navigationTextColor = theme.appColors.primary;
    final navigationTextStyle = theme.textTheme.h30.paint(navigationTextColor);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(roomType.adviceText, style: adviceTextStyle),
          TextButton(
            onPressed: () {},
            child: Text(roomType.navigationText, style: navigationTextStyle),
          ),
        ],
      ),
    );
  }
}
