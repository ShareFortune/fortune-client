import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fortune_client/domain/interactors/auth/login.dart';
import 'package:fortune_client/domain/interactors/room/fetch_list.dart';
import 'package:fortune_client/domain/repositories/auth.dart';
import 'package:fortune_client/domain/usecases/auth/login.dart';
import 'package:fortune_client/domain/usecases/room/fetch_list.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (_) => throw UnimplementedError(),
);

final loginUseCaseProvider = Provider<LoginUseCase>(
  (ref) => LoginInteractor(ref.watch(authRepositoryProvider)),
);

/// Room
final roomFetchAllUseCaseProvider = Provider<RoomFetchListUseCase>(
  (ref) => RoomFetchListInteractor(),
);
