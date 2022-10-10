import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/tab.dart';
import '../components/page.dart';

class HomePageContainer extends StatelessWidget {
  const HomePageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final tabItem = ref.watch(tabItemProvider.state);

      return HomePageComponent(tabItem.state);
    });
  }
}
