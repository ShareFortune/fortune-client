import 'package:flutter/material.dart';

import '../../../rooms/room/containers/parts/room_tag_wrappers.dart';

class ProfilePegeComponent extends StatelessWidget {
  const ProfilePegeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    const networkImage =
        "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png";

    const titleTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24.0,
    );
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          NewWidget(networkImage: networkImage),
          Text(
            "名前",
            style: titleTextStyle,
          ),
          Text(
            "21歳 東京",
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          Text(
            "大学３年生です。大学３年生です。大学３年生です。大学３年生です。大学３年生です。大学３年生です。大学３年生です。大学３年生です。大学３年生です。大学３年生です。",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          RoomTagWrappersContainer(),
          SizedBox(height: 30),
          Text(
            "プロフィール",
            style: titleTextStyle,
          ),
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.networkImage,
  }) : super(key: key);

  final String networkImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 3,
      child: GestureDetector(
        onTap: () {},
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: Material(
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.network(
                  networkImage,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
