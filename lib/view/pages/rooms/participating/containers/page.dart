import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_page.dart';

import '../components/page.dart';

class ParticipatingRoomListPage extends ConsumerWidget {
  const ParticipatingRoomListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    onTapRoom() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RoomDetailPage(),
        ),
      );
    }

    return ParticipatingRoomListPageComponent(
      onTapRoom: onTapRoom,
    );
  }
}
