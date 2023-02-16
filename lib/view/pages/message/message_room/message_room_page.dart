// ignore_for_file: depend_on_referenced_packages

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/message/message_room/message_room_view_model.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/bottom_sheet/photo_actions_sheet.dart';
import 'package:fortune_client/view/widgets/other/async_value_widget.dart';

class MessageRoomPage extends ConsumerWidget {
  const MessageRoomPage({super.key, @PathParam() required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(messageRoomViewModelProvider(id));
    final viewModel = ref.watch(messageRoomViewModelProvider(id).notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: const BackAppBar(title: "メッセージ"),
      body: AsyncValueWidget(
        data: state.messages,
        builder: (messages) {
          return Chat(
            theme: _defaultChatTheme(theme),
            messages: messages,
            onAttachmentPressed: () async {
              final file = await PhotoActionsSheet.getPhoto(theme, context);
              if (file != null) viewModel.handleImageSelection(file);
            },
            // onPreviewDataFetched: viewModel.handlePreviewDataFetched,
            onSendPressed: viewModel.handleSendPressed,
            showUserAvatars: true,
            showUserNames: true,
            user: state.author,
            l10n: _l10n(),
          );
        },
      ),
    );
  }

  /// Default chat theme [DefaultChatTheme].
  DefaultChatTheme _defaultChatTheme(AppTheme theme) {
    return DefaultChatTheme(
      backgroundColor: theme.appColors.onBackground,
      primaryColor: theme.appColors.primary,
      inputBackgroundColor: theme.appColors.background,
      inputTextColor: theme.appColors.subText1,
      inputTextCursorColor: theme.appColors.subText2,
      messageInsetsHorizontal: 20,
      messageInsetsVertical: 12,
      inputBorderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      inputContainerDecoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
    );
  }

  /// 多言語化
  ChatL10nEn _l10n() {
    return const ChatL10nEn(
      attachmentButtonAccessibilityLabel: '画像アップロード',
      emptyChatPlaceholder: 'メッセージがありません。',
      inputPlaceholder: 'メッセージを入力してください',
      sendButtonAccessibilityLabel: '送信',
    );
  }
}
