import 'package:flutter/material.dart';

import '../../../../widgets/app_bar/containers/page.dart';
import '../../message_room/containers/page.dart';

class MessageRoomListPageComponent extends StatelessWidget {
  const MessageRoomListPageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    const userIcon =
        "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png";

    return CustomScrollView(
      slivers: [
        const FortuneAppBarContainer(),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: const Text(
                    "渋谷に集まろー",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    "いつ集まりますか？ 今週の月曜都合よければ集まりませんか？",
                    maxLines: 2,
                    style: TextStyle(fontSize: 14),
                  ),
                  leading: const CircleAvatar(
                    radius: 26,
                    backgroundImage: NetworkImage(userIcon),
                  ),

                  /// 通知と投稿日時
                  trailing: Stack(
                    // alignment: AlignmentDirectional.center,
                    children: [
                      /// 通知
                      Container(
                        height: 25,
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 4.2),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Text(
                          "10",
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      /// 投稿日時
                      const Text(
                        "昨日",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  onTap: (() {
                    ///
                    /// メッセージルームに遷移
                    Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(
                        builder: (context) => const MessageRoomPageContainer(),
                      ),
                    );
                  }),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
