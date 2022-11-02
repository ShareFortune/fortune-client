import 'package:flutter/material.dart';

class RoomListTileComponent extends StatelessWidget {
  const RoomListTileComponent({
    super.key,
    required this.hostName,
    required this.hostIcon,
    required this.roomTitle,
    required this.maleUserIcons,
    required this.femaleUserIcons,
    required this.holdingPlace,
    required this.maxNumOfParticipants,
    required this.onTapRoom,
  });

  /// ホストの名前
  final String hostName;

  /// ホストのアイコン
  final String hostIcon;

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
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// ホストユーザー
            /// アイコンと名前
            Row(
              children: [
                CircleAvatar(
                  radius: 23,
                  backgroundImage: NetworkImage(hostIcon),
                ),
                const SizedBox(width: 30),
                Text(
                  hostName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),

            /// ルーム作成日時
            const Text("2 days ago"),
          ],
        ),
        const SizedBox(height: 15),

        ///
        /// ルーム詳細情報
        InkWell(
          /// ルームタップ時のイベント
          /// ルーム詳細に遷移
          onTap: onTapRoom,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4.0,
                  offset: Offset(0.0, 4.0),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// ルームタイトル
                  Text(
                    roomTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
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
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
        const Divider(),
      ]),
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
