import 'package:flutter/material.dart';

import '../containers/parts/header_image.dart';
import '../containers/parts/room_tag_wrappers.dart';

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
          onPressed: () {},
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          /// 背景画像 + いいねボタン
          RoomHeaderImageContainer(),

          /// タグ
          RoomTagWrappersContainer(),
        ],
      ),
    );
  }
}
