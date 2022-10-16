import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'account_screen_component.dart.dart';

class AccountScreenContainer extends StatelessWidget {
  const AccountScreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return const AccountScreenComponent();
      },
    );
  }
}
