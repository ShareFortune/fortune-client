import 'package:flutter/material.dart';

class RoomMemberIconListComponent extends StatelessWidget {
  const RoomMemberIconListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    const userIcon =
        "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png";

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// 参加者アイコン
              participant(),

              /// 参加者リストを表示
              seeMoreButton(),
            ],
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 120,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15, top: 0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// アイコン
                    participantIcon(userIcon),

                    /// 名前
                    const SizedBox(height: 5),
                    participantName(),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget participantName() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
        ),
        const SizedBox(width: 10),
        const Text("名前"),
      ],
    );
  }

  Widget participantIcon(String userIcon) {
    return CircleAvatar(
      radius: 40,
      backgroundImage: NetworkImage(userIcon),
      child: const Align(
        alignment: Alignment.bottomRight,
      ),
    );
  }

  Widget seeMoreButton() {
    return TextButton(
      onPressed: (() {}),
      child: const Text(
        "もっと見る",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget participant() {
    return const Text(
      "参加者  8/10",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 17,
      ),
    );
  }
}
