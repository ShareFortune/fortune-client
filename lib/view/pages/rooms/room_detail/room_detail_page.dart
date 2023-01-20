import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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

    state.detail.maybeWhen(
      data: (roomDetail) {
        hostIconAsync = _header(
          theme,
          roomDetail.title,
          roomDetail.host.mainImageURL,
        );
        roomDetailContainerAsync = RoomDetailContainer(roomDetail);
        membersContainerAsync = RoomMembersContainer(
          roomDetail.members,
          (c, v) {},
        );
      },
      orElse: () => loadingWidget(),
    );

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
                  padding: const EdgeInsets.only(top: 50),
                  indicatorWeight: 3,
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: 30),
                  labelPadding: const EdgeInsets.only(bottom: 10),
                  indicatorColor: theme.appColors.secondary,
                  labelStyle: theme.textTheme.h30.bold(),
                  labelColor: theme.appColors.secondary,
                  tabs: const [
                    Tab(text: '詳細'),
                    Tab(text: 'メンバー'),
                  ],
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
                  child: _requestBtn(theme),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _requestBtn(AppTheme theme) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: const Size.fromHeight(60),
        backgroundColor: theme.appColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        "リクエスト",
        style: theme.textTheme.h40.bold(),
      ),
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
