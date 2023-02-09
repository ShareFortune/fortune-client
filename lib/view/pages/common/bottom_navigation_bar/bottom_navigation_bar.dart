import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyBottomNavigationBar extends HookConsumerWidget {
  const MyBottomNavigationBar({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return AutoTabsScaffold(
      routes: const [
        RoomsTab(),
        ParticipatingTab(),
        MessagesTab(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          iconSize: 25,
          type: BottomNavigationBarType.fixed,
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            tabsRouter.setActiveIndex(index);
          },
          elevation: 0,
          backgroundColor: theme.appColors.onBackground,
          selectedLabelStyle: theme.textTheme.h10,
          unselectedLabelStyle: theme.textTheme.h10,
          selectedItemColor: theme.appColors.iconBtn1,
          unselectedItemColor: theme.appColors.disable,
          items: _items,
        );
      },
    );
  }

  List<BottomNavigationBarItem> get _items {
    return const [
      BottomNavigationBarItem(
        label: 'ホーム',
        icon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        label: '参加',
        icon: Icon(Icons.event),
      ),
      BottomNavigationBarItem(
        label: 'メッセージ',
        icon: Icon(Icons.chat),
      ),
    ];
  }
}
