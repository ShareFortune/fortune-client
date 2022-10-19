import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../profile/create/containers/page.dart';
import '../components/page.dart';

class AccountCreationPageContainer extends ConsumerWidget {
  const AccountCreationPageContainer({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AccountCreationPageComponent(
      onPressedNextButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileCreationPageContainer(),
          ),
        );
      },
    );
  }
}
