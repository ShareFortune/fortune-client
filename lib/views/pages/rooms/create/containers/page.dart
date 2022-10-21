import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/page.dart';

class RoomCreationPageContainer extends ConsumerWidget {
  const RoomCreationPageContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const RoomCreationPageComponent();
  }
}
