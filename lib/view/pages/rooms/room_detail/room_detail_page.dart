import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_view_model.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_info_container.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_members_container.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomDetailPage extends HookConsumerWidget {
  const RoomDetailPage({super.key, @PathParam() required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(roomDetailViewModelProvider);
    final viewModel = ref.watch(roomDetailViewModelProvider.notifier);

    return state.when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              onPressed: Navigator.of(context).pop,
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
          extendBodyBehindAppBar: true,
          body: DefaultTabController(
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return <Widget>[
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: kToolbarHeight + 80, bottom: 0),
                      child: _title(
                        theme,
                        image: Assets.images.insta2,
                      ),
                    ),
                  ),
                  SliverAppBar(
                    primary: false,
                    backgroundColor: Colors.transparent,
                    bottom: TabBar(
                      indicatorWeight: 3,
                      indicatorPadding:
                          const EdgeInsets.symmetric(horizontal: 30),
                      labelPadding: const EdgeInsets.only(bottom: 10),
                      indicatorColor: theme.appColors.tabIndicator,
                      labelStyle: theme.textTheme.h30.bold(),
                      labelColor: theme.appColors.tabIndicator,
                      tabs: const [
                        Tab(text: '詳細'),
                        Tab(text: 'メンバー'),
                      ],
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  Stack(
                    children: [
                      const SingleChildScrollView(
                        physics: ClampingScrollPhysics(),
                        child: RoomInfoContainer(),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 30,
                            left: 50,
                            right: 50,
                          ),
                          child: _requestBtn(theme),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    child: RoomMembersContainer(
                      data.members,
                      viewModel.onTapProfile,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      error: (e, _) => Center(child: Text(e.toString())),
      loading: () => const CircularProgressIndicator(),
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

  Widget _title(
    AppTheme theme, {
    required AssetGenImage image,
  }) {
    return Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: image.provider(),
        ),
        const Gap(30),
        Text(
          "渋谷で飲み会しませんか？",
          style: theme.textTheme.h40.bold(),
        ),
      ],
    );
  }
}
