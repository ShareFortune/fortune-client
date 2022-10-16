import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'rooms_screen_component.dart';

class RoomsScreenContainer extends StatelessWidget {
  const RoomsScreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return RoomsScreenComponent(
          userIconPath:
              "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png",
          onPressedMyIconButton: () {},
        );
      },
    );
  }
}
