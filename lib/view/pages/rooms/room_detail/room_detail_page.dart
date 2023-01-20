import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_view_model.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/components/room_detail_container.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/components/room_members_container.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomDetailPage extends HookConsumerWidget {
  const RoomDetailPage(@PathParam("roomId") this.roomId, {super.key});

  final String roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(roomDetailViewModelProvider(roomId));
    final viewModel = ref.watch(roomDetailViewModelProvider(roomId).notifier);

    Widget hostIconAsync = Container();
    Widget roomDetailContainerAsync = Container();
    Widget membersContainerAsync = Container();
    Widget bottomWidgetAsync = Container();

    state.detail.maybeWhen(
      data: (roomDetail) {
        hostIconAsync = _header(
          theme,
          roomDetail.title,
          roomDetail.host.mainImageURL,
        );
        roomDetailContainerAsync = RoomDetailContainer(roomDetail);
        membersContainerAsync =
            RoomMembersContainer(roomDetail.members, (c, v) {});

        /// ホストなら表示しない
        if (roomDetail.isHost) return;

        /// ゲストならリクエスト中 or 参加中
        if (roomDetail.isMember) {
          if (roomDetail.status == RoomStatus.pending) {
            bottomWidgetAsync = bottomButton(theme, "参加しています", null);
          } else {
            bottomWidgetAsync = bottomButton(theme, "メッセージ", () {});
          }
          return;
        }

        ///
        if (roomDetail.status == RoomStatus.pending) {
          bottomWidgetAsync = bottomButton(theme, "参加する", () {});
        }
      },
      orElse: () => loadingWidget(),
    );

    /// タブテキスト
    final tabTextColor = theme.appColors.subText1;
    final tabTextStyle = theme.textTheme.h20.paint(tabTextColor).bold();

    /// タブテキスト（選択時）
    final onTabTextColor = theme.appColors.onSecondary;
    final onTabTextStyle = theme.textTheme.h20.paint(onTabTextColor).bold();

    return Container(
      color: theme.appColors.onBackground,
      child: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.transparent,
                iconTheme: IconThemeData(color: theme.appColors.iconBtn1),
              ),
              SliverToBoxAdapter(child: hostIconAsync),
              SliverToBoxAdapter(
                child: TabBar(
                  labelColor: onTabTextColor,
                  unselectedLabelColor: tabTextColor,
                  labelStyle: onTabTextStyle,
                  unselectedLabelStyle: tabTextStyle,
                  padding: const EdgeInsets.only(top: 50),
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: 30),
                  labelPadding: const EdgeInsets.only(bottom: 5),
                  tabs: const [Tab(text: '詳細'), Tab(text: 'メンバー')],
                ),
              ),
            ];
          },
          body: Stack(
            children: [
              TabBarView(
                children: [
                  SingleChildScrollView(child: roomDetailContainerAsync),
                  SingleChildScrollView(child: membersContainerAsync),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 30),
                  child: bottomWidgetAsync,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bottomButton(AppTheme theme, String text, VoidCallback? onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: const Size.fromHeight(60),
        backgroundColor: onPressed != null
            ? theme.appColors.primary
            : theme.appColors.disable,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(text, style: theme.textTheme.h40.bold()),
    );
  }

  Widget _header(AppTheme theme, String title, String image) {
    return Column(
      children: [
        ClipOval(
          child: Image.network(
            image,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const Gap(30),
        Text(title, style: theme.textTheme.h40.bold()),
      ],
    );
  }
}
