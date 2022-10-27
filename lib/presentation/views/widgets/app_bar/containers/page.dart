import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../pages/account/account/containers/page.dart';
import '../../../pages/rooms/create/containers/page.dart';
import '../components/page.dart';

class FortuneAppBarContainer extends ConsumerWidget
    implements PreferredSizeWidget {
  const FortuneAppBarContainer({super.key, this.bottomWidget});

  final PreferredSizeWidget? bottomWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// ルーム追加
    onPressedAddButton() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RoomCreationPageContainer(),
        ),
      );
    }

    /// ルーム追加
    onPressedMyIconButton() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AccountPegeContainer(),
        ),
      );
    }

    return FortuneAppBarComponent(
      myIconPath:
          "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png",
      onPressedMyIconButton: onPressedMyIconButton,
      onPressedAddButton: onPressedAddButton,
      bottomWidget: bottomWidget,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
