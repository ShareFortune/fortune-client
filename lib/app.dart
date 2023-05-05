import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/routes/app_router.dart';
import 'package:fortune_client/view/routes/route_navigator.dart';
import 'package:fortune_client/view/theme/app_theme.dart';
import 'package:fortune_client/view/widgets/other/loading_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:screen_loader/screen_loader.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..maxConnectionsPerHost = 5;
  }
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    HttpOverrides.global = MyHttpOverrides();

    /// ScreenLoader
    configScreenLoader(loader: const Loader(), bgBlur: 0);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,

      /// Theme
      theme: theme.data,
      themeMode: ref.watch(appThemeModeProvider),
      darkTheme: AppTheme.dark().data,

      /// Localization
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,

      /// Route
      navigatorKey: getIt<RouteNavigator>().navigatorKey,
      initialRoute: RoutePath.launch.name,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
