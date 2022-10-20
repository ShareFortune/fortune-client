import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../room/containers/page.dart';
import '../components/page.dart';

class ParticipatingRoomListPageContainer extends ConsumerWidget {
  const ParticipatingRoomListPageContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    onTapRoom() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RoomPageContainer(),
        ),
      );
    }

    return ParticipatingRoomListPageComponent(
      onTapRoom: onTapRoom,
    );
  }
}
