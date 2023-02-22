import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/util/error/fortune_error.dart';
import 'package:fortune_client/util/error/fortune_exception.dart';
import 'package:fortune_client/view/widgets/other/error_widget.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    Key? key,
    required this.data,
    required this.builder,
  }) : super(key: key);

  final AsyncValue<T> data;
  final Widget Function(T) builder;

  @override
  Widget build(BuildContext context) {
    return data.when(
      data: (data) {
        return builder(data);
      },
      error: (err, msg) {
        /// エラーハンドラ
        WidgetsBinding.instance.addPostFrameCallback((_) {
          FortuneError(
            type: catchFortuneException(err).type,
          ).handle(context: context);
        });

        return errorWidget(err, msg);
      },
      loading: () {
        return loadingWidget();
      },
    );
  }

  /// 取得した例外を[FortuneException]にキャスト
  /// キャストできない場合は想定外エラーとして返却
  FortuneException catchFortuneException(Object error) {
    if (error is FortuneException) return error;
    if (error is DioError) {
      if (error.error is FortuneException) return error.error;
    }
    return FortuneException('9999');
  }
}
