import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/page.dart';

class RoomListPageContainer extends ConsumerWidget {
  const RoomListPageContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RoomListPageComponent(
      userIconPath:
          "https://gws-ug.jp/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png",
      onPressedMyIconButton: () {},
    );
  }
}
