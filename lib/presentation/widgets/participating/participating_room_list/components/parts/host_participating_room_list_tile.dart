import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HostParticipatingRoomListTileComponent extends StatelessWidget {
  const HostParticipatingRoomListTileComponent({super.key});

  @override
  Widget build(BuildContext context) {
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
                    '募集中',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
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
                      // child: HostRoomListTileComponent(),
                      child: AcceptedHostRoomListTileComponent(),
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

class HostRoomListTileComponent extends StatelessWidget {
  const HostRoomListTileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    const double iconSize = 12;
    const double iconPadding = 8;

    const userIcon =
        "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png";

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "ゲームしませんか？",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              OutlinedButton(
                onPressed: (() {}),
                child: const Text(
                  "New request",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: const [
              Text("男性:"),
              SizedBox(width: iconPadding),
              CircleAvatar(
                radius: iconSize,
                backgroundImage: NetworkImage(userIcon),
              ),
              SizedBox(width: iconPadding),
              CircleAvatar(
                radius: iconSize,
                backgroundImage: NetworkImage(userIcon),
              ),
              SizedBox(width: iconPadding),
              CircleAvatar(
                radius: iconSize,
                backgroundImage: NetworkImage(userIcon),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: const [
              Text("女性:"),
              SizedBox(width: iconPadding),
              CircleAvatar(
                radius: iconSize,
                backgroundImage: NetworkImage(userIcon),
              ),
              SizedBox(width: iconPadding),
              CircleAvatar(
                radius: iconSize,
                backgroundImage: NetworkImage(userIcon),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text("参加人数: "),
                  Text("8/10名"),
                  SizedBox(width: 10),
                  Text("東京都・調布市"),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.favorite_border),
                  SizedBox(width: 5),
                  Text("12"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(),
        ],
      ),
    );
  }
}

class AcceptedHostRoomListTileComponent extends StatelessWidget {
  const AcceptedHostRoomListTileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    const double iconSize = 12;
    const double iconPadding = 8;

    const userIcon =
        "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png";

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "ゲームしませんか？",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              OutlinedButton.icon(
                onPressed: (() {}),
                icon: const Icon(Icons.mail_outline),
                label: const Text("Message"),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: const [
              Text("男性:"),
              SizedBox(width: iconPadding),
              CircleAvatar(
                radius: iconSize,
                backgroundImage: NetworkImage(userIcon),
              ),
              SizedBox(width: iconPadding),
              CircleAvatar(
                radius: iconSize,
                backgroundImage: NetworkImage(userIcon),
              ),
              SizedBox(width: iconPadding),
              CircleAvatar(
                radius: iconSize,
                backgroundImage: NetworkImage(userIcon),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: const [
              Text("女性:"),
              SizedBox(width: iconPadding),
              CircleAvatar(
                radius: iconSize,
                backgroundImage: NetworkImage(userIcon),
              ),
              SizedBox(width: iconPadding),
              CircleAvatar(
                radius: iconSize,
                backgroundImage: NetworkImage(userIcon),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text("参加人数: "),
                  Text("8/10名"),
                  SizedBox(width: 10),
                  Text("東京都・調布市"),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.favorite_border),
                  SizedBox(width: 5),
                  Text("12"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(),
        ],
      ),
    );
  }
}
