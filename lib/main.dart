import 'dart:async';

import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fortune_client/foundation/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fimber/fimber.dart';
import 'package:device_preview/device_preview.dart';
import 'package:fortune_client/injector.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initDependencies();

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
    // overrides = [
    //   DataSource.room.overrideWithValue(StubRoomDataSource()),
    //   DataSource.profile.overrideWithValue(FakeProfileDataSource()),
    // ];
  }

  runZonedGuarded(
    () => runApp(
      ProviderScope(
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
}
