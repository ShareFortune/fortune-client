import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../rooms/room_list/containers/page.dart';
import '../components/page.dart';

class SignInPageContainer extends ConsumerWidget {
  const SignInPageContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    onPressedNextButton() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RoomListPageContainer(),
        ),
      );
    }

    return SignInPageComponent(
      onPressedNextButton: onPressedNextButton,
    );
  }
}
