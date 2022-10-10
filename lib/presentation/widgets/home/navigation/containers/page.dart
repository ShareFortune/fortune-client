import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/tab.dart';
import '../components/page.dart';

class BottomNavigationBarContainer extends StatelessWidget {
  const BottomNavigationBarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final tabItem = ref.watch(tabItemProvider.state);

      onChangeTab(TabItem selectTab) {
        tabItem.state = selectTab;
      }

      return BottomNavigationBarComponent(
        tabItem: tabItem.state,
        onChangeTab: onChangeTab,
      );
    });
  }
}
