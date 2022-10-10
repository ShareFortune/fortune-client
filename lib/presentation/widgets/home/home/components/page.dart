import 'package:flutter/material.dart';

import '../../../../providers/tab.dart';
import '../../navigation/containers/page.dart';

class HomePageComponent extends StatelessWidget {
  const HomePageComponent(this.currentTab, {super.key});

  final TabItem currentTab;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarContainer(),
      body: Stack(
        children: TabItem.values
            .map(
              (tabItem) => Offstage(
                offstage: currentTab != tabItem,
                child: Navigator(
                  key: navigatorKeys[tabItem],
                  onGenerateRoute: (settings) {
                    return MaterialPageRoute<Widget>(
                      builder: (context) => tabItem.page,
                    );
                  },
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
