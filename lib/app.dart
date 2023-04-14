import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:fortune_client/view/routes/navigate_handler.dart';
import 'package:fortune_client/view/routes/route_path.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      theme: ref.watch(appThemeProvider).data,
      darkTheme: AppTheme.dark().data,
      themeMode: ref.watch(appThemeModeProvider),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      navigatorKey: getIt<NavigateHandler>().navigatorKey,
      initialRoute: RoutePath.launch.name,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
