import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../room_list/components/parts/room_list_tile.dart';

class GestParticipatingRoomListTileComponent extends StatelessWidget {
  const GestParticipatingRoomListTileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: const SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: RoomListTileComponent(),
              ),
            ),
          );
        },
      ),
    );
  }
}
