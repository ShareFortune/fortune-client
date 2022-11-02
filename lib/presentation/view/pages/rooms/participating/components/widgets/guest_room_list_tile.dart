import 'package:flutter/material.dart';

class GuestRoomListTileWidget extends StatelessWidget {
  const GuestRoomListTileWidget({
    super.key,
    required this.hostName,
    required this.hostIcon,
    required this.roomTitle,
    required this.onTapRoom,
  });

  /// ホストの名前
  final String hostName;

  /// ホストのアイコン
  final String hostIcon;

  /// ルームのタイトル
  final String roomTitle;

  /// ルームをタップ
  final Function() onTapRoom;

  @override
  Widget build(BuildContext context) {
    const double iconSize = 20;

    const textStyle = TextStyle(
      color: Colors.black54,
      fontSize: 14,
    );
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
      child: InkWell(
        onTap: onTapRoom,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: CircleAvatar(
                    radius: iconSize,
                    backgroundImage: NetworkImage(hostIcon),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        roomTitle,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          Text(hostName, style: textStyle),
                          const Text("・", style: textStyle),
                          const Text("2日前に申請", style: textStyle),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            /// ステータスボタン
            /// ステータスに応じてUI変化
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(),
              ),
              child: const SizedBox(
                  width: double.infinity, child: Center(child: Text("リクエスト中"))),
            ),
            const SizedBox(height: 10),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
