import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../../rooms/room_list/components/parts/room_list_tile.dart';

class GestParticipatingRoomListTileComponent extends StatelessWidget {
  const GestParticipatingRoomListTileComponent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AnimationLimiter(
//       child: ListView.builder(
//         itemCount: 100,
//         itemBuilder: (BuildContext context, int index) {
//           return AnimationConfiguration.staggeredList(
//             position: index,
//             duration: const Duration(milliseconds: 375),
//             child: const SlideAnimation(
//               verticalOffset: 50.0,
//               child: FadeInAnimation(
//                 child: RoomListTileComponent(),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    const userIcon =
        "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png";

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          snap: true,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                const SizedBox(width: 15),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    '承認済み',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'メッセージルームあり',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    '取り消し済み',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 10.0),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return AnimationLimiter(
                child: AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 175),
                  // duration: const Duration(milliseconds: 375),
                  child: const SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: GestRoomListTileComponent(),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

class GestRoomListTileComponent extends StatelessWidget {
  const GestRoomListTileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    const double iconSize = 20;
    const double iconPadding = 8;

    const userIcon =
        "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png";

    const textStyle = TextStyle(
      color: Colors.black54,
      fontSize: 14,
    );
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: CircleAvatar(
                  radius: iconSize,
                  backgroundImage: NetworkImage(userIcon),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      "渋谷のカフェで好きなアニメについて話しませんか？",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: const [
                        Text("斉藤まこと", style: textStyle),
                        Text("・", style: textStyle),
                        Text("2日前に申請", style: textStyle),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          /// ステータスボタン
          OutlinedButton(
            onPressed: () {},
            child: SizedBox(
                width: double.infinity, child: Center(child: Text("リクエスト中"))),
            style: OutlinedButton.styleFrom(
              // textStyle: TextStyle(fontSize: 20),
              padding: const EdgeInsets.symmetric(),
            ),
          ),
          const SizedBox(height: 10),
          const Divider(),
        ],
      ),
    );
  }
}
