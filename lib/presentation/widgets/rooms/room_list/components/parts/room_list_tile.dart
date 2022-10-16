import 'package:flutter/material.dart';

class RoomListTileComponent extends StatelessWidget {
  const RoomListTileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    const double iconSize = 12;
    const double iconPadding = 8;

    const userIcon =
        "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png";

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                CircleAvatar(
                  radius: 23,
                  backgroundImage: NetworkImage(userIcon),
                  child: Align(
                    alignment: Alignment.bottomRight,
                  ),
                ),
                SizedBox(width: 30),
                Text(
                  "data",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Text("2 days ago"),
          ],
        ),
        const SizedBox(height: 10),
        Container(
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
                const Text(
                  "ゲームしませんか？",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 10),
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
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        const Divider(),
      ]),
    );
  }
}
