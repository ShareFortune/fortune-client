import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/rooms/participating/components/participating_room_card.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_room_list_state.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ParticipatingRoomListContainer extends HookConsumerWidget {
  const ParticipatingRoomListContainer({
    super.key,
    required this.title,
    required this.rooms,
  });

  final String title;
  final AsyncValue<List<ParticipatingRoomListStateItem>> rooms;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    /// タイトル
    late Widget titleWidgetAsync;

    /// ルームリストコンテナ
    late Widget roomListContainerAsync;

    /// 全て表示ボタン
    late Widget showAllButtonAsync;

    rooms.maybeWhen(
      data: (data) {
        titleWidgetAsync = _titleWidget(theme, title, roomsNum: data.length);
        roomListContainerAsync = _roomListContainer(data);
        showAllButtonAsync = _showAllButton(theme, null);
      },
      orElse: () {
        titleWidgetAsync = _titleWidget(theme, title);
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
            height: 250,
            child: roomListContainerAsync,
          ),

          /// 全て表示
          showAllButtonAsync,
        ],
      ),
    );
  }

  _titleWidget(AppTheme theme, String title, {int? roomsNum}) {
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
          Text(roomsNum.toString()),
        ],
      ),
    );
  }

  _showAllButton(AppTheme theme, VoidCallback? onTap) {
    /// タイトルスタイル
    final textStyle = theme.textTheme.h30.paint(theme.appColors.subText1);

    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: theme.appColors.border1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("すべて表示", style: textStyle),
          const Icon(
            size: 16,
            Icons.arrow_forward_ios,
            color: Color(0xFFD9D9D9),
          ),
        ],
      ),
    );
  }

  _roomListContainer(List<ParticipatingRoomListStateItem> rooms) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Row(
          children: rooms.map((e) {
            return Row(children: [
              ParticipatingRoomCard(e),
              const Gap(10),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
