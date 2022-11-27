import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/theme/app_theme.dart';

class MyBottomNavigationBar extends ConsumerWidget {
  const MyBottomNavigationBar({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return AutoTabsRouter(
      routes: const [
        RoomListRoute(),
        RoomJoinListRoute(),
        MessageRoomListRoute(),
        MessageRoomListRoute(),
        MessageRoomListRoute(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 25,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            backgroundColor: theme.appColors.background,
            selectedLabelStyle: theme.textTheme.h10,
            unselectedLabelStyle: theme.textTheme.h10,
            selectedItemColor: theme.appColors.navigationBarSelectedIcon,
            unselectedItemColor: theme.appColors.navigationBarUnSelectedIcon,
            items: [
              const BottomNavigationBarItem(
                label: 'ホーム',
                icon: Icon(Icons.home),
              ),
              const BottomNavigationBarItem(
                label: '参加',
                icon: Icon(Icons.event),
              ),
              BottomNavigationBarItem(
                  label: "",
                  icon: FloatingActionButton(
                    mini: true,
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shape: const CircleBorder(
                      side: BorderSide(width: 1),
                    ),
                    onPressed: null,
                    child: Icon(
                      Icons.add,
                      color: theme.appColors.navigationBarSelectedIcon,
                    ),
                  )),
              const BottomNavigationBarItem(
                label: 'メッセージ',
                icon: Icon(Icons.chat),
              ),
              const BottomNavigationBarItem(
                label: 'アカウント',
                icon: Icon(Icons.account_circle_outlined),
              ),
            ],
          ),
        );
      },
    );
  }
}
