import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/base/message_room/messege_room.dart';
import 'package:fortune_client/util/converter/datetime_converter.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';

class MessageRoomListTile extends StatelessWidget {
  const MessageRoomListTile({
    super.key,
    required this.theme,
    required this.messageRoom,
    required this.onTap,
  });

  final AppTheme theme;
  final MessageRoom messageRoom;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            _leadingIcon(),
            const Gap(15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _roomNameText(),
                      _lastSendAtText(),
                    ],
                  ),
                  _lastSendMessageText(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// ルームのタイトル
  Text _roomNameText() {
    return Text(
      messageRoom.roomName,
      style: theme.textTheme.h30.paint(theme.appColors.subText1).bold(),
    );
  }

  /// 最終投稿日時
  /// １時間以内の場合は⚪︎分前と表記
  _lastSendAtText() {
    return Text(
      convertLastSendAtToString(),
      style: theme.textTheme.h10.paint(
        theme.appColors.subText3,
      ),
    );
  }

  /// 最終投稿メッセージ
  _lastSendMessageText() {
    if (messageRoom.lastSendMessage == null) return Container();
    return Column(
      children: [
        const Gap(3),
        Text(
          messageRoom.lastSendMessage ?? "",
          style: theme.textTheme.h20.paint(theme.appColors.subText3),
        ),
      ],
    );
  }

  /// ホストアイコン
  CircleAvatar _leadingIcon() {
    return const CircleAvatar(radius: 26);
  }

  /// [lastSendAt]を文字列に変換する
  String convertLastSendAtToString() {
    if (messageRoom.lastSendAt == null) return "";
    return DateTimeConverter.convertToHHmm(messageRoom.lastSendAt!);
  }
}
