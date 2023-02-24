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
        /// Widgetの生成を待機
        WidgetsBinding.instance.addPostFrameCallback((_) {
          /// Exception
          final exception = catchFortuneError<FortuneException>(err);
          if (exception != null) {
            FortuneError(type: exception.type).handle(context: context);
          }

          /// Error
          final error = catchFortuneError<FortuneError>(err);
          if (error != null) {
            error.handle(context: context);
          }
        });

        return errorWidget(err, msg);
      },
      loading: () {
        return loadingWidget();
      },
    );
  }

  /// 取得した例外またはエラーをキャスト
  /// キャストできない場合はNullとして返却
  ErrorT? catchFortuneError<ErrorT>(Object error) {
    if (error is ErrorT) return error as ErrorT;
    if (error is DioError) {
      if (error.error is ErrorT) return error.error as ErrorT;
    }
    return null;
  }
}
