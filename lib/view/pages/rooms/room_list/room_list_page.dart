// ignore_for_file: use_build_context_synchronously

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fortune_client/gen/assets.gen.dart';
import 'package:fortune_client/l10n/locale_keys.g.dart';
import 'package:fortune_client/view/pages/common/scroll_app_bar/scroll_app_bar.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/room_list_card.dart';
import 'package:fortune_client/view/pages/rooms/room_list/components/rooms_filter_bottom_sheet.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_state.dart';
import 'package:fortune_client/view/pages/rooms/room_list/room_list_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/dialog/toast.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';
import 'package:fortune_client/view/widgets/other/list_animation.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RoomListPage extends HookConsumerWidget {
  const RoomListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(roomListViewModelProvider);
    final viewModel = ref.watch(roomListViewModelProvider.notifier);

    ///
    /// 検索結果が存在するか
    ///
    final noSearchResultsFoundViewAsync = state.hasRoomSearchResult
        ? Container()
        : _noSearchResultsFoundView(theme);

    return Container(
      color: theme.appColors.onBackground,
      child: CustomScrollView(
        slivers: [
          ScrollAppBar(
            title: LocaleKeys.room_list_page_title.tr(),
            onTapTitle: () async {
              viewModel.changeFilter(
                await RoomsFilterBottomSheet.show(
                  context,
                  filter: state.filter,
                  onSelectAddress: viewModel.navigateToEntryAddress,
                  onSelectTags: viewModel.navigateToTagsSelection,
                ),
              );
            },
          ),
          SliverToBoxAdapter(child: noSearchResultsFoundViewAsync),

          /// ルームリスト
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: AsyncValueWidget(
                  data: state.rooms,
                  builder: (room) {
                    return _roomListView(room, theme, viewModel, context);
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _roomListView(
    List<RoomListStateRoom> data,
    AppTheme theme,
    RoomListViewModel viewModel,
    BuildContext context,
  ) {
    return ListAnimationWidget(
      items: data,
      spacing: 10,
      container: (room) {
        return RoomListCard(
          theme: theme,
          room: room,
          onTapRoom: () => viewModel.navigateToRoomDetail(room.data.id),
          onTapHeart: (value) async {
            if (!await viewModel.saveOrReleaseRoom(room.data.id, value)) {
              await _showFailedToRegisterToast(context, theme);
            }
          },
          onTapJoinRequestBtn: () async {
            final result = await viewModel.sendJoinRequest(room.data.id);
            await _showJoinRequestToast(context, theme, result);
          },
        );
      },
    );
  }

  Widget _noSearchResultsFoundView(AppTheme theme) {
    return SizedBox(
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.images.icons.iconRoom.path,
            fit: BoxFit.contain,
          ),
          const Gap(15),
          Text(
            LocaleKeys.room_list_page_rooms_empty.tr(),
            style: theme.textTheme.h20.paint(theme.appColors.subText1),
          ),
        ],
      ),
    );
  }

  _showFailedToRegisterToast(BuildContext context, AppTheme theme) {
    showErrorToast(
      context,
      theme,
      LocaleKeys.data_room_action_save_failure.tr(),
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
