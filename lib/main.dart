import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fortune_client/data/datasource/stub/remote/go/stub_room_data_source.dart';
import 'package:fortune_client/injector.dart';
import 'package:fortune_client/view/routes/app_router.gr.dart';
import 'package:fortune_client/view/routes/route_guard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ProviderScope(
      overrides: [
        DataSource.room.overrideWithValue(StubRoomDataSource()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authGuard = ref.watch(authGuardProvider);
    final appRouter = AppRouter(authGuard: authGuard);

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
