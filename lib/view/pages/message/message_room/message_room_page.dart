// ignore_for_file: depend_on_referenced_packages

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/view/pages/message/message_room/message_room_view_model.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';

class MessageRoomPage extends ConsumerWidget {
  const MessageRoomPage({super.key, @PathParam() required this.id});

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final state = ref.watch(messageRoomViewModelProvider);
    final viewModel = ref.watch(messageRoomViewModelProvider.notifier);

    return Scaffold(
      backgroundColor: theme.appColors.onBackground,
      appBar: AppBar(
        title: const Text("メッセージ"),
        titleTextStyle: theme.textTheme.h40
            .merge(TextStyle(color: theme.appColors.subText1))
            .bold(),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: state.when(
        data: (data) {
          return Chat(
            theme: DefaultChatTheme(
              backgroundColor: theme.appColors.onBackground,
              primaryColor: theme.appColors.primary,
              inputBackgroundColor: theme.appColors.background,
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
              inputTextCursorColor: theme.appColors.subText2,
              inputTextColor: theme.appColors.subText1,
            ),
            messages: data.messages,
            onAttachmentPressed: () =>
                _handleAtachmentPressed(context, viewModel),
            onMessageTap: viewModel.handleMessageTap,
            onPreviewDataFetched: viewModel.handlePreviewDataFetched,
            onSendPressed: viewModel.handleSendPressed,
            showUserAvatars: true,
            showUserNames: true,
            user: viewModel.user(),
            l10n: const ChatL10nEn(
              attachmentButtonAccessibilityLabel: '画像アップロード',
              emptyChatPlaceholder: 'メッセージがありません。',
              fileButtonAccessibilityLabel: 'ファイル',
              inputPlaceholder: 'メッセージを入力してください',
              sendButtonAccessibilityLabel: '送信',
            ),
          );
        },
        error: (error, stackTrace) => errorWidget(error, stackTrace),
        loading: () => loadingWidget(),
      ),
    );
  }

  Future<void> _handleAtachmentPressed(
      BuildContext context, MessageRoomViewModel viewModel) async {
    return await showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => SafeArea(
        child: SizedBox(
          height: 144,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  viewModel.handleImageSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Photo'),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  viewModel.handleFileSelection();
                },
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('File'),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text('Cancel'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
