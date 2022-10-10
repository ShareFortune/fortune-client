import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../create/components/page.dart';

class AccountCreationPageContainer extends StatelessWidget {
  const AccountCreationPageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, ref, child) {
      return const AccountCreationPageComponent();
    }));
  }
}
