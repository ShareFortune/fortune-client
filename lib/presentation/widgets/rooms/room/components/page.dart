import 'package:flutter/material.dart';

import '../../../account/account/containers/page.dart';
import '../containers/parts/header_image.dart';
import '../containers/parts/room_tag_wrappers.dart';
import 'parts/room_member_icon_list.dart';

class RoomPageComponent extends StatelessWidget {
  const RoomPageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: const Text(
          "ルームタイトル",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.ios_share,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 背景画像 + いいねボタン
            const RoomHeaderImageContainer(),

            /// タグ
            const RoomTagWrappersContainer(),

            /// タイトル
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "ルームタイトル",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 50),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "参加",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AccountPegeContainer(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            /// 男女比
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 0, bottom: 15),
              child: Text(
                "男性 3 / 女性 3",
                style: TextStyle(color: Colors.black45),
              ),
            ),

            const Divider(),

            /// 参加者
            const RoomMemberIconListComponent(100),

            const SizedBox(height: 10),
            const Divider(),

            /// 説明
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 50, bottom: 15),
              child: Column(
                children: const [
                  Text(
                    "開催内容",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "基本情報",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "詳細情報",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
