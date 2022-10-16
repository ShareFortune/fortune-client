import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'parts/room_list_tile.dart';

class RoomListPageComponent extends StatelessWidget {
  const RoomListPageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    const userIcon =
        "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png";

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          snap: true,
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          centerTitle: false,
          title: const Text("フォーチュン",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
              onPressed: () {},
              child: const CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(userIcon),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: Row(
              children: [
                const SizedBox(width: 15),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  label: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  icon: const Text(
                    'タグ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  label: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  icon: const Text(
                    '日付',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  label: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  icon: const Text(
                    '募集人数',
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
                      child: RoomListTileComponent(),
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
