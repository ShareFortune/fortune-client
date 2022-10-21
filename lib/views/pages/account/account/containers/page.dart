import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/page.dart';

class AccountPegeContainer extends ConsumerWidget {
  const AccountPegeContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const AccountPegeComponent();
  }
}
