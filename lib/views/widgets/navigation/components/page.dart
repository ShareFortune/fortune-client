import 'package:flutter/cupertino.dart';

import '../../../../presentation/providers/tab.dart';

class BottomNavigationBarComponent extends StatelessWidget {
  const BottomNavigationBarComponent({
    super.key,
    required this.tabItem,
    required this.onChangeTab,
  });

  final TabItem tabItem;
  final Function(TabItem) onChangeTab;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabBar(
      currentIndex: TabItem.values.indexOf(tabItem),
      items: TabItem.values
          .map(
            (tabItem) => BottomNavigationBarItem(
              icon: Icon(tabItem.icon),
            ),
          )
          .toList(),
      onTap: (index) {
        final selectedTab = TabItem.values[index];
        if (tabItem == selectedTab) {
          navigatorKeys[selectedTab]
              ?.currentState
              ?.popUntil((route) => route.isFirst);
        } else {
          onChangeTab(selectedTab);
        }
      },
    );
  }
}
