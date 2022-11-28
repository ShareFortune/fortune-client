import 'dart:async';

import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fortune_client/data/datasource/remote/go/room/stub_room_data_source.dart';
import 'package:fortune_client/foundation/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fimber/fimber.dart';
import 'package:device_preview/device_preview.dart';
import 'package:fortune_client/injector.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  if (!kReleaseMode) {
    Fimber.plantTree(DebugTree());
  } else {
    debugPrint = (message, {wrapWidth}) {
      print(message);
    };
  }

  if (Constants.flavor == Flavor.dev) {
    Fluttertoast.showToast(
      msg: "flavor: ${EnumToString.convertToString(Constants.flavor)}",
    );
  }

  runZonedGuarded(
    () => runApp(
      ProviderScope(
        overrides: [
          DataSource.room.overrideWithValue(StubRoomDataSource()),
        ],
        child: DevicePreview(
          enabled: !kReleaseMode && Constants.enablePreview,
          builder: (context) {
            return const MyApp();
          },
        ),
      ),
    ),
    (error, stackTrace) {
      Fimber.e(error.toString());
    },
  );

  // runApp(
  //   ProviderScope(
  //     overrides: [
  //       DataSource.room.overrideWithValue(StubRoomDataSource()),
  //     ],
  //     child: const MyApp(),
  //   ),
  // );
}

// class MyApp extends ConsumerWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final authGuard = ref.watch(authGuardProvider);
//     final appRouter = AppRouter(authGuard: authGuard);

//     return MaterialApp.router(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       routerDelegate: appRouter.delegate(),
//       routeInformationParser: appRouter.defaultRouteParser(),
//     );
//   }
// }
