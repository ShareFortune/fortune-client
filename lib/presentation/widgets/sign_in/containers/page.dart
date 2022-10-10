import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/page.dart';

class SignInPageContainer extends ConsumerWidget {
  const SignInPageContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SignInPageComponent();
  }
}
