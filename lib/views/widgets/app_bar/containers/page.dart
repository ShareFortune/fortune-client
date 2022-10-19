import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/page.dart';

class FortuneAppBarContainer extends ConsumerWidget
    implements PreferredSizeWidget {
  const FortuneAppBarContainer({super.key, this.bottomWidget});

  final PreferredSizeWidget? bottomWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FortuneAppBarComponent(
      myIconPath:
          "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png",
      onPressedMyIconButton: () {},
      bottomWidget: bottomWidget,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
