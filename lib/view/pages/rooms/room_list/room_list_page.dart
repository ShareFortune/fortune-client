import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/common/app_bar/app_bar.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_card_widget.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_view_model.dart';
import 'package:fortune_client/view/widgets/search_header.dart';

class RoomListPage extends ConsumerWidget {
  const RoomListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(roomListViewModelProvider);
    final viewModel = ref.watch(roomListViewModelProvider.notifier);

    return state.when(
      data: (data) {
        return CustomScrollView(
          slivers: [
            const FortuneAppBar(bottomWidget: SearchHeader()),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: data.rooms.length,
                (context, index) {
                  return AnimationLimiter(
                    child: AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 175),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            child: RoomCardWidget(),
                            // child: roomListTile(
                            //   context: context,
                            //   room: data.rooms[index],
                            // ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
      error: (e, msg) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Text(
              e.toString(),
            ),
          ),
        ),
      ),
      loading: () => const Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  Column roomListTile({
    required BuildContext context,
    required RoomListItem room,
  }) {
    return Column(children: [
      ///
      /// ルームヘッダー
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// ホストユーザーのアイコンと名前
          Row(
            children: [
              CircleAvatar(
                radius: 23,
                child: Image.asset(room.hostUserIcon, width: 150.0),
              ),
              const SizedBox(width: 30),
              Text(
                room.hostName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),

          /// ルーム作成日時
          Text(room.createdAt),
        ],
      ),
      const SizedBox(height: 15),

      ///
      /// ルーム詳細情報
      InkWell(
        /// ルームタップ時のイベント
        /// ルーム詳細に遷移
        onTap: () {},
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
                  room.roomTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),

                /// 男性ユーザーのアイコンリスト
                const SizedBox(height: 15),
                _userIconsWidget(
                  gender: "男性",
                  iconSize: 12,
                  userIcons: room.maleUserIcons,
                ),

                /// 女性ユーザーのアイコンリスト
                const SizedBox(height: 5),
                _userIconsWidget(
                  gender: "女性",
                  iconSize: 12,
                  userIcons: room.femaleUserIcons,
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
                            "${room.maleUserIcons.length + room.femaleUserIcons.length}/${room.maxNumOfParticipants}名"),
                        const SizedBox(width: 10),

                        /// 開催場所
                        Text(room.holdingPlace),
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
    ]);
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
                child: Image.asset(icon, width: 150.0),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
