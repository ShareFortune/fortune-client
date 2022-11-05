import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';

class FortuneBottomNavigationBar extends StatelessWidget {
  const FortuneBottomNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        RoomListRoute(),
        ParticipatingRoomListRoute(),
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
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(label: 'ホーム', icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: '参加', icon: Icon(Icons.event)),
              BottomNavigationBarItem(label: 'メッセージ', icon: Icon(Icons.chat)),
            ],
          ),
        );
      },
    );
  }
}
