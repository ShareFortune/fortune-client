import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../profiles/create/profile_creation_screen_container.dart';
import 'account_creation_screen_component.dart';

class AccountCreationScreenContainer extends StatelessWidget {
  const AccountCreationScreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return AccountCreationScreenComponent(
          onPressedNextButton: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileCreationScreenContainer(),
              ),
            );
          },
        );
      },
    );
  }
}
