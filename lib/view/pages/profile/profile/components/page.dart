import 'package:flutter/material.dart';
import 'package:fortune_client/view/widgets/tag_wrapper.dart';

class ProfilePegeComponent extends StatelessWidget {
  const ProfilePegeComponent({super.key, required this.containerSize});

  final double containerSize;

  @override
  Widget build(BuildContext context) {
    const networkImage =
        "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png";

    const textStyleTitle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24.0,
    );

    const textStyleSubTitle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
    );

    const textStyleProfileKey = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 17.0,
    );
    const textStyleProfileValue = TextStyle(
      fontSize: 17.0,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _plofileImages(networkImage),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "名前",
                  style: textStyleTitle,
                ),
                const Text(
                  "21歳 男性 東京",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),

                /// タグ
                const SizedBox(height: 30),
                const Text(
                  "趣味",
                  style: textStyleSubTitle,
                ),
                const SizedBox(height: 10),
                const TagWrapper(),

                const SizedBox(height: 30),
                const Text(
                  "自己紹介",
                  style: textStyleSubTitle,
                ),
                const SizedBox(height: 10),

                const Text(
                  """大学３年生です。大学３年生です。大学３年生です。大学３年生です。
              
              大学３年生です。大学３年生です。大学３年生です。大学３年生です。大学３年生です。大学３年生です。""",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                const Text(
                  """大学３年生です。大学３年生です。大学３年生です。大学３年生です。
              
              大学３年生です。大学３年生です。大学３年生です。大学３年生です。大学３年生です。大学３年生です。""",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                const Text(
                  """大学３年生です。大学３年生です。大学３年生です。大学３年生です。
              
              大学３年生です。大学３年生です。大学３年生です。大学３年生です。大学３年生です。大学３年生です。""",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),

                const SizedBox(height: 30),
                const Text(
                  "プロフィール",
                  style: textStyleSubTitle,
                ),
                const SizedBox(height: 10),
                contentField(
                  key: "名前",
                  value: "名前",
                  textStyleKey: textStyleProfileKey,
                  textStyleValue: textStyleProfileValue,
                ),
                contentField(
                  key: "年齢",
                  value: "年齢",
                  textStyleKey: textStyleProfileKey,
                  textStyleValue: textStyleProfileValue,
                ),
                contentField(
                  key: "居住地",
                  value: "居住地",
                  textStyleKey: textStyleProfileKey,
                  textStyleValue: textStyleProfileValue,
                ),
                contentField(
                  key: "身長",
                  value: "身長",
                  textStyleKey: textStyleProfileKey,
                  textStyleValue: textStyleProfileValue,
                ),
                contentField(
                  key: "お酒",
                  value: "時々飲む",
                  textStyleKey: textStyleProfileKey,
                  textStyleValue: textStyleProfileValue,
                ),
                contentField(
                  key: "タバコ",
                  value: "吸わない",
                  textStyleKey: textStyleProfileKey,
                  textStyleValue: textStyleProfileValue,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget contentField({
    required String key,
    required String value,
    required TextStyle textStyleKey,
    required TextStyle textStyleValue,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 150,
            child: Text(key, style: textStyleKey),
          ),
          Text(value, style: textStyleValue),
        ],
      ),
    );
  }

  Widget _plofileImages(String networkImage) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      // height: MediaQuery.of(context).size.height / 3,
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
