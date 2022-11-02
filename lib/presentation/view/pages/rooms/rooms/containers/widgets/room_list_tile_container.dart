import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../room_list/components/widgets/room_list_tile_component.dart';

class RoomListTileContainer extends StatelessWidget {
  const RoomListTileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        const icon =
            "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png";

        final icons = [
          icon,
          icon,
          icon,
          icon,
        ];

        return RoomListTileComponent(
          hostName: "hostName",
          hostIcon: icon,
          roomTitle: "roomTitle",
          maleUserIcons: icons,
          femaleUserIcons: icons,
          holdingPlace: "東京都・府中市",
          maxNumOfParticipants: 10,
          onTapRoom: () {},
        );
      },
    );
  }
}
