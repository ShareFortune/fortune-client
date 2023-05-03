import 'package:flutter/material.dart';
import 'package:fortune_client/view/pages/home/home_view_model.dart';
import 'package:fortune_client/view/pages/message/message_room_list/message_room_list_page.dart';
import 'package:fortune_client/view/pages/rooms/participating/participating_page.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewModelProvider);
    final viewModel = ref.watch(homeViewModelProvider.notifier);

    final pages = [
      RoomListPage(),
      const ParticipatingPage(),
      const MessageRoomListPage(),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: IndexedStack(index: state.pageIndex, children: pages),
      bottomNavigationBar: const BottomMenuWidget(),
    );
  }
}

class BottomMenuWidget extends HookConsumerWidget {
  const BottomMenuWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewModelProvider);
    final viewModel = ref.watch(homeViewModelProvider.notifier);

    return BottomNavigationBar(
      currentIndex: state.pageIndex,
      onTap: (index) => viewModel.updatePageIndex(index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "ホーム",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          label: "参加中",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: "メッセージ",
        ),
      ],
    );
  }
}
