import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/profile/profile/components/page.dart';

class ProfilePegeContainer extends ConsumerWidget {
  const ProfilePegeContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProfilePegeComponent(
      containerSize: MediaQuery.of(context).size.height * 0.8,
    );
  }
}
