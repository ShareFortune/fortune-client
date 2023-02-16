import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/core/base/message_room/messege_room.dart';
import 'package:fortune_client/util/converter/datetime_converter.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/icon/user_icon_widget.dart';
import 'package:gap/gap.dart';
import 'package:badges/badges.dart' as badges;

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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: IntrinsicHeight(
          child: Row(
            children: [
              _userIcon(),
              const Gap(15),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _roomNameText(),
                    if (messageRoom.lastSendMessage != null)
                      _lastSendMessageText(messageRoom.lastSendMessage!),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _lastSendAtText(),
                  _notification(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _notification() {
    return badges.Badge(
      showBadge: messageRoom.unreadCount != 0,
      badgeContent: Text(
        messageRoom.unreadCount.toString(),
        style: theme.textTheme.h20.paint(theme.appColors.onPrimary).bold(),
      ),
      badgeStyle: badges.BadgeStyle(
        elevation: 0,
        badgeColor: theme.appColors.primary,
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
        shape: badges.BadgeShape.square,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  /// ホストのアイコン
  Widget _userIcon() {
    return UserIconWidget(
      messageRoom.hostMainImageURL,
      radius: 26,
    );
  }

  /// ルームのタイトル
  Widget _roomNameText() {
    return Text(
      messageRoom.roomName,
      style: theme.textTheme.h30.paint(theme.appColors.subText1).bold(),
    );
  }

  /// 最終投稿日時
  /// １時間以内の場合は⚪︎分前と表記
  Widget _lastSendAtText() {
    return Text(
      convertLastSendAtToString(),
      style: theme.textTheme.h10.paint(
        theme.appColors.subText3,
      ),
    );
  }

  /// 最終投稿メッセージ
  Widget _lastSendMessageText(String lastSendMessage) {
    return Column(
      children: [
        const Gap(3),
        Text(
          lastSendMessage,
          style: theme.textTheme.h20.paint(theme.appColors.subText3),
        ),
      ],
    );
  }

  /// [lastSendAt]を文字列に変換する
  String convertLastSendAtToString() {
    if (messageRoom.lastSendAt == null) return "";
    return DateTimeConverter.convertToLastSendAt(
      DateTime.now(),
      messageRoom.lastSendAt!,
    );
  }
}
