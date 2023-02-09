import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/data/model/enum/room_status.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/room_detail_view_model.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/components/room_detail_container.dart';
import 'package:fortune_client/view/pages/rooms/room_detail/components/room_members_container.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/dialog/toast.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomDetailPage extends HookConsumerWidget {
  const RoomDetailPage(@PathParam("roomId") this.roomId, {super.key});

  final String roomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(roomDetailViewModelProvider(roomId));
    final viewModel = ref.watch(roomDetailViewModelProvider(roomId).notifier);

    Widget headerWidgetAsync = Container();
    Widget roomDetailContainerAsync = Container();
    Widget membersContainerAsync = Container();
    Widget bottomWidgetAsync = Container();

    state.detail.maybeWhen(
      data: (room) {
        headerWidgetAsync =
            _headerWidget(theme, room.roomName, room.hostUser.mainImageURL);
        roomDetailContainerAsync = RoomDetailContainer(room);
        membersContainerAsync = RoomMembersContainer(
          room.participants,
          (id) => viewModel.navigateToProfile(id),
        );

        /// ホストなら表示しない
        if (room.isHost) return;

        /// ゲストならリクエスト中 or 参加中
        if (room.isMember) {
          room.roomStatus == RoomStatus.pending

              /// 参加しています
              ? bottomWidgetAsync = bottomButton(
                  theme: theme,
                  label:
                      LocaleKeys.room_detail_page_label_areParticipating.tr(),
                  onPressed: null,
                )

              /// メッセージ
              : bottomWidgetAsync = bottomButton(
                  theme: theme,
                  label: LocaleKeys.room_detail_page_label_message.tr(),
                  onPressed: () {},
                );
          return;
        }

        if (room.roomStatus == RoomStatus.pending) {
          room.joinRequestStatus != null

              /// リクエスト中
              ? bottomWidgetAsync = bottomButton(
                  theme: theme,
                  label: LocaleKeys.room_detail_page_label_requesting.tr(),
                  onPressed: null,
                )

              /// 参加する
              : bottomWidgetAsync = bottomButton(
                  theme: theme,
                  label: LocaleKeys.room_detail_page_label_joinRequest.tr(),
                  onPressed: () async {
                    final result = await viewModel.joinRequest();
                    // ignore: use_build_context_synchronously
                    _showJoinRequestToast(context, theme, result);
                  });
        }
      },
      orElse: () => loadingWidget(),
    );

    /// タブカラー
    final tabColor = theme.appColors.subText1;

    /// タブカラー（選択時）
    final onTabColor = theme.appColors.onSecondary;

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
              SliverToBoxAdapter(child: headerWidgetAsync),
              SliverToBoxAdapter(
                child: TabBar(
                  labelColor: onTabColor,
                  unselectedLabelColor: tabColor,
                  labelStyle: theme.textTheme.h20.paint(onTabColor).bold(),
                  unselectedLabelStyle:
                      theme.textTheme.h20.paint(tabColor).bold(),
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: 30),
                  labelPadding: const EdgeInsets.only(bottom: 5),
                  tabs: [
                    Tab(text: LocaleKeys.room_detail_page_detail.tr()),
                    Tab(text: LocaleKeys.room_detail_page_member.tr()),
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
                  child: bottomWidgetAsync,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bottomButton({
    required AppTheme theme,
    required String label,
    required VoidCallback? onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: const Size.fromHeight(50),
        backgroundColor: onPressed != null
            ? theme.appColors.primary
            : theme.appColors.disable,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(label, style: theme.textTheme.h30.bold()),
    );
  }

  Widget _headerWidget(AppTheme theme, String title, String image) {
    return Column(
      children: [
        ClipOval(
          child: Image.network(image, width: 80, height: 80, fit: BoxFit.cover),
        ),
        Container(
          padding: const EdgeInsets.all(30),
          child: Text(title, style: theme.textTheme.h40.bold()),
        ),
      ],
    );
  }

  _showJoinRequestToast(BuildContext context, AppTheme theme, bool isSuccess) {
    isSuccess
        ? showToast(
            context,
            theme,
            LocaleKeys.data_room_action_joinRequest_success.tr(),
          )
        : showErrorToast(
            context,
            theme,
            LocaleKeys.data_room_action_joinRequest_failure.tr(),
          );
  }
}
