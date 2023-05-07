// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_detail_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$roomDetailViewModelHash() =>
    r'87b7bfdecd2d36e9a030eb7d570d72232cec18f1';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$RoomDetailViewModel
    extends BuildlessAutoDisposeAsyncNotifier<RoomDetailState> {
  late final String roomId;

  Future<RoomDetailState> build(
    String roomId,
  );
}

/// See also [RoomDetailViewModel].
@ProviderFor(RoomDetailViewModel)
const roomDetailViewModelProvider = RoomDetailViewModelFamily();

/// See also [RoomDetailViewModel].
class RoomDetailViewModelFamily extends Family<AsyncValue<RoomDetailState>> {
  /// See also [RoomDetailViewModel].
  const RoomDetailViewModelFamily();

  /// See also [RoomDetailViewModel].
  RoomDetailViewModelProvider call(
    String roomId,
  ) {
    return RoomDetailViewModelProvider(
      roomId,
    );
  }

  @override
  RoomDetailViewModelProvider getProviderOverride(
    covariant RoomDetailViewModelProvider provider,
  ) {
    return call(
      provider.roomId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'roomDetailViewModelProvider';
}

/// See also [RoomDetailViewModel].
class RoomDetailViewModelProvider extends AutoDisposeAsyncNotifierProviderImpl<
    RoomDetailViewModel, RoomDetailState> {
  /// See also [RoomDetailViewModel].
  RoomDetailViewModelProvider(
    this.roomId,
  ) : super.internal(
          () => RoomDetailViewModel()..roomId = roomId,
          from: roomDetailViewModelProvider,
          name: r'roomDetailViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$roomDetailViewModelHash,
          dependencies: RoomDetailViewModelFamily._dependencies,
          allTransitiveDependencies:
              RoomDetailViewModelFamily._allTransitiveDependencies,
        );

  final String roomId;

  @override
  bool operator ==(Object other) {
    return other is RoomDetailViewModelProvider && other.roomId == roomId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, roomId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<RoomDetailState> runNotifierBuild(
    covariant RoomDetailViewModel notifier,
  ) {
    return notifier.build(
      roomId,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
