import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:fortune_client/view/common/app_bar/app_bar.dart';
import 'package:fortune_client/view/pages/rooms/room_join_list/room_join_list_state.dart';
import 'package:fortune_client/view/pages/rooms/room_join_list/room_join_list_view_model.dart';

class RoomJoinListPage extends ConsumerWidget {
  const RoomJoinListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(roomJoinListViewModelProvider);
    final viewModel = ref.watch(roomJoinListViewModelProvider.notifier);

    return state.when(
      data: (data) {
        return DefaultTabController(
          length: 2,
          child: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                const FortuneAppBar(
                  bottomWidget: TabBar(
                    tabs: <Widget>[
                      Tab(
                        child: Text(
                          "ホスト",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "ゲスト",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ];
            },

            /// 参加している又は参加予定のルームリスト
            /// [MediaQuery.removePadding]余分な下部マージンを削除
            body: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: TabBarView(
                children: <Widget>[
                  /// ホストで開催予定のルームリスト
                  roomListView(
                    rooms: data.hostRooms,
                    listTile: (room) {
                      return _hostRoomListTile(room, viewModel.onTapRoom);
                    },
                  ),

                  /// ゲストで参加予定のルームリスト
                  roomListView(
                    rooms: data.guestRooms,
                    listTile: (room) {
                      return _guestRoomListTile(room, viewModel.onTapRoom);
                    },
                  ),
                ],
              ),
            ),
          ),
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

  roomListView<T>({
    required List<T> rooms,
    required Widget Function(T room) listTile,
  }) {
    return AnimationLimiter(
      child: ListView.builder(
        itemCount: rooms.length,
        itemBuilder: (BuildContext context, int index) {
          final room = rooms[index];
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 175),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: listTile(room),
              ),
            ),
          );
        },
      ),
    );
  }

  _hostRoomListTile(RoomHostListItemState room, Function() onTap) {
    const double iconSize = 20;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  room.title,
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
              ],
            ),

            /// 男性ユーザーのアイコンリスト
            const SizedBox(height: 15),
            _userIconsWidget(
              gender: "男性",
              iconSize: iconSize,
              userIcons: room.maleUserIcons,
            ),

            /// 女性ユーザーのアイコンリスト
            const SizedBox(height: 5),
            _userIconsWidget(
              gender: "女性",
              iconSize: iconSize,
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

            const SizedBox(height: 15),
            const Divider(),
          ],
        ),
      ),
    );
  }

  _guestRoomListTile(RoomGuestListItemState room, Function() onTap) {
    const double iconSize = 20;
    const textStyle = TextStyle(
      color: Colors.black54,
      fontSize: 14,
    );
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: CircleAvatar(
                    radius: iconSize,
                    backgroundImage: NetworkImage(room.hostUserIcon),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        room.title,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          Text(room.hostName, style: textStyle),
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
