import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/page.dart';

class MessageRoomListPageContainer extends StatelessWidget {
  const MessageRoomListPageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return const MessageRoomListPageComponent();
    });
  }
}
