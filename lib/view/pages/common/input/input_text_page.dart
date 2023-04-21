
import 'package:flutter/material.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_text_theme.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/app_bar/back_app_bar.dart';
import 'package:fortune_client/view/widgets/form_field/base_text_field.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class InputTextPageArguments {
  final String? title;
  final String? initialValue;
  final Function(String)? onChanged;

  InputTextPageArguments({
    this.title,
    this.initialValue,
    this.onChanged,
  });
}

class InputTextPage extends StatefulHookConsumerWidget {
  const InputTextPage(this.arguments, {super.key});

  final InputTextPageArguments arguments;

  @override
  ConsumerState<InputTextPage> createState() => _InputPageState();
}

class _InputPageState extends ConsumerState<InputTextPage> {
  InputTextPageArguments get arguments => widget.arguments;

  /// 入力コントローラ
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: arguments.initialValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      behavior: HitTestBehavior.opaque,
      child: Scaffold(
        backgroundColor: theme.appColors.onBackground,
        appBar: BackAppBar(
          title: arguments.title ?? '',
          action: [
            TextButton(
              onPressed: () {
                arguments.onChanged?.call(_controller.text);
                navigator.goBack();
              },
              child: Text("保存", style: theme.textTheme.h40.bold()),
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: BaseTextField(
            controller: _controller,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: theme.appColors.border1),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: theme.appColors.primary),
            ),
          ),
        ),
      ),
    );
  }
}
