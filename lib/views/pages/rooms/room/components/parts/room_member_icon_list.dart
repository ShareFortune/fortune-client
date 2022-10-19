import 'package:flutter/material.dart';

class RoomMemberIconListComponent extends StatelessWidget {
  const RoomMemberIconListComponent(this.hieght, {super.key});

  final double hieght;

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
              const Text(
                "参加者  8/10",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              TextButton(
                onPressed: (() {}),
                child: const Text(
                  "もっと見る",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: hieght,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15, top: 0),
                child: CircleAvatar(
                  radius: hieght / 2,
                  backgroundImage: const NetworkImage(userIcon),
                  child: const Align(
                    alignment: Alignment.bottomRight,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
