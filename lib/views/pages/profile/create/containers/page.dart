import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/page.dart';

class ProfileCreationPageContainer extends StatelessWidget {
  const ProfileCreationPageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return ProfileCreationPageComponent(
          onPressedNextButton: (() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileCreationPageContainer(),
              ),
            );
          }),
        );
      },
    );
  }
}
