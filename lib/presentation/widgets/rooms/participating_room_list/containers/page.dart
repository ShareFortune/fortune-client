import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/page.dart';

class ParticipatingRoomListPageContainer extends StatelessWidget {
  const ParticipatingRoomListPageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return const ParticipatingRoomListPageComponent();
    });
  }
}
