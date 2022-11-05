import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/common/app_bar/app_bar.dart';
import 'package:fortune_client/view/pages/messages/message_room/containers/page.dart';
import 'package:fortune_client/view/pages/messages/message_room_list/message_room_list_view_model.dart';

class MessageRoomListPage extends ConsumerWidget {
  const MessageRoomListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(messageRoomListViewModelProvider);
    final viewModel = ref.watch(messageRoomListViewModelProvider.notifier);

    const textStyleTitle = TextStyle(fontSize: 16, color: Colors.black);
    const textStyleSubTitle = TextStyle(fontSize: 15, color: Colors.black54);

    const double tileHieght = 80;

    return state.when(
      data: (data) {
        return CustomScrollView(
          slivers: [
            const FortuneAppBar(),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: data.messageRooms.length,
                (context, index) {
                  final messageRoom = data.messageRooms[index];
                  return InkWell(
                    onTap: (() {
                      /// メッセージルームに遷移
                      Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const MessageRoomPageContainer(),
                        ),
                      );
                    }),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 10, top: 30),
                      child: SizedBox(
                        height: tileHieght,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  NetworkImage(messageRoom.userIcon),
                            ),
                            const SizedBox(width: 15),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    messageRoom.title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: textStyleTitle,
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    messageRoom.content,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: textStyleSubTitle,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            SizedBox(
                              height: tileHieght,
                              child: Stack(
                                alignment: AlignmentDirectional.topEnd,
                                children: [
                                  /// 投稿日時
                                  postedDate(messageRoom.postedAt),

                                  /// 通知
                                  notificationWidget(messageRoom.notifications),
                                ],
                              ),
                            ),
                          ],
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
              // style: theme.textTheme.h30,
            ),
          ),
        ),
      ),
      loading: () => const Scaffold(
        body: SafeArea(
          child: Center(
            child: CircularProgressIndicator(
                // color: theme.appColors.primary,
                ),
          ),
        ),
      ),
    );
  }

  Text postedDate(DateTime postedAt) {
    return const Text(
      "昨日",
      style: TextStyle(fontSize: 10),
    );
  }

  Widget notificationWidget(int notifications) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 25,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 4.2),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          "$notifications",
          maxLines: 1,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
