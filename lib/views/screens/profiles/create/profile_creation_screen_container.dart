import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'profile_creation_screen_component.dart';

class ProfileCreationScreenContainer extends StatelessWidget {
  const ProfileCreationScreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return ProfileCreationScreenComponent(
          onPressedNextButton: (() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileCreationScreenContainer(),
              ),
            );
          }),
        );
      },
    );
  }
}
