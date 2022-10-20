import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../components/widgets/room_header_image.dart';

class RoomHeaderImageContainer extends StatelessWidget {
  const RoomHeaderImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, ref, child) {
      return const RoomHeaderImageComponent();
    }));
  }
}
