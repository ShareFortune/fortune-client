import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../room_detail/containers/page.dart';
import '../components/page.dart';

class ParticipatingRoomListPage extends ConsumerWidget {
  const ParticipatingRoomListPage({super.key});

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
