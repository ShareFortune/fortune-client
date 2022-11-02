import 'package:flutter/material.dart';

import '../../../../widgets/app_bar/containers/page.dart';
import '../../message_room/containers/page.dart';

class MessageRoomListPageComponent extends StatelessWidget {
  const MessageRoomListPageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    const userIcon =
        "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png";

    const textStyleTitle = TextStyle(fontSize: 16, color: Colors.black);
    const textStyleSubTitle = TextStyle(fontSize: 15, color: Colors.black54);

    const double tileHieght = 80;

    return CustomScrollView(
      slivers: [
        const FortuneAppBarContainer(),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return InkWell(
                onTap: (() {
                  /// メッセージルームに遷移
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                      builder: (context) => const MessageRoomPageContainer(),
                    ),
                  );
                }),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10, top: 30),
                  child: SizedBox(
                    height: tileHieght,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(userIcon),
                        ),
                        const SizedBox(width: 15),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "渋谷に集まろー",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: textStyleTitle,
                              ),
                              SizedBox(height: 3),
                              Text(
                                "いつ集まりますか？ 今週の月曜都合よければ集まりませんか？いつ集まりますか？",
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
                              postedDate(),

                              /// 通知
                              notificationNum(),
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
  }

  Text postedDate() {
    return const Text(
      "昨日",
      style: TextStyle(fontSize: 10),
    );
  }

  Widget notificationNum() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 25,
        padding: const EdgeInsets.only(left: 10, right: 10, top: 4.2),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Text(
          "999+",
          maxLines: 1,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
