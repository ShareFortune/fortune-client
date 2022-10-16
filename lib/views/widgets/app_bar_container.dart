import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_bar_component.dart';

class FortuneAppBarContainer extends StatelessWidget {
  const FortuneAppBarContainer({super.key, this.bottomWidget});

  final PreferredSizeWidget? bottomWidget;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return FortuneAppBarComponent(
          myIconPath:
              "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png",
          onPressedMyIconButton: () {},
          bottomWidget: bottomWidget,
        );
      },
    );
  }
}
