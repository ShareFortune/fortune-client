import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../../widgets/app_bar_component.dart';
import '../../../widgets/app_bar_container.dart';
import 'widgets/room_list_tile_container.dart';
import 'widgets/search_bar_component.dart';

class RoomsScreenComponent extends StatelessWidget {
  const RoomsScreenComponent({
    super.key,
    required this.userIconPath,
    required this.onPressedMyIconButton,
  });

  final String userIconPath;
  final Function() onPressedMyIconButton;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const FortuneAppBarContainer(bottomWidget: SearchBarComponent()),
        SliverPadding(
          padding: const EdgeInsets.only(top: 10.0),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return AnimationLimiter(
                child: AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 175),
                  child: const SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: RoomListTileContainer(),
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
