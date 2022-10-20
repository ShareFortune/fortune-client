import 'package:flutter/material.dart';

class HostsRoomListTileWidget extends StatelessWidget {
  const HostsRoomListTileWidget({
    super.key,
    required this.roomTitle,
    required this.holdingPlace,
    required this.maxNumOfParticipants,
    required this.maleUserIcons,
    required this.femaleUserIcons,
    required this.onTapRoom,
  });

  /// ルームのタイトル
  final String roomTitle;

  /// 開催場所
  final String holdingPlace;

  /// 最大参加人数
  final int maxNumOfParticipants;

  /// 男性ユーザーのアイコンリスト
  final List<String> maleUserIcons;

  /// 女性ユーザーのアイコンリスト
  final List<String> femaleUserIcons;

  /// ルームをタップ
  final Function() onTapRoom;

  @override
  Widget build(BuildContext context) {
    const double iconSize = 12;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: onTapRoom,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  roomTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                /// ステータスに応じてWidgetが変化

                OutlinedButton(
                  onPressed: (() {}),
                  child: const Text(
                    "New request",
                    style: TextStyle(color: Colors.red),
                  ),
                ),

                //               OutlinedButton.icon(
                //                 onPressed: (() {}),
                //                 icon: const Icon(Icons.mail_outline),
                //                 label: const Text("Message"),
                //               ),
              ],
            ),

            /// 男性ユーザーのアイコンリスト
            const SizedBox(height: 15),
            _userIconsWidget(
              gender: "男性",
              iconSize: iconSize,
              userIcons: maleUserIcons,
            ),

            /// 女性ユーザーのアイコンリスト
            const SizedBox(height: 5),
            _userIconsWidget(
              gender: "女性",
              iconSize: iconSize,
              userIcons: femaleUserIcons,
            ),

            /// ルーム詳細情報
            /// 参加人数・開催場所
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    /// 参加人数
                    const Text("参加人数: "),
                    Text(
                        "${maleUserIcons.length + femaleUserIcons.length}/$maxNumOfParticipants名"),
                    const SizedBox(width: 10),

                    /// 開催場所
                    Text(holdingPlace),
                  ],
                ),

                /// いいね
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 5),
                    const Text("12"),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 15),
            const Divider(),
          ],
        ),
      ),
    );
  }

  _userIconsWidget({
    required String gender,
    required double iconSize,
    required List<String> userIcons,
  }) {
    return Row(
      children: [
        Text("$gender:"),
        Row(
          children: userIcons.map((icon) {
            return Padding(
              padding: const EdgeInsets.only(left: 5),
              child: CircleAvatar(
                radius: iconSize,
                backgroundImage: NetworkImage(icon),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
