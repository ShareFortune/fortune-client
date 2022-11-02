import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../components/widgets/room_tag_wrappers.dart';

class RoomTagWrappersContainer extends StatelessWidget {
  const RoomTagWrappersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, ref, child) {
      return const RoomTagWrappersComponent();
    }));
  }
}
