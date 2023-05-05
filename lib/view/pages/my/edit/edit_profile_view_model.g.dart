// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$editProfileViewModelHash() =>
    r'4a65d7ec50f1f00f30fc768ab17c7a5c4b8b14cb';

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

abstract class _$EditProfileViewModel
    extends BuildlessAutoDisposeNotifier<EditProfileState> {
  late final EditProfilePageArguments arguments;

  EditProfileState build(
    EditProfilePageArguments arguments,
  );
}

/// See also [EditProfileViewModel].
@ProviderFor(EditProfileViewModel)
const editProfileViewModelProvider = EditProfileViewModelFamily();

/// See also [EditProfileViewModel].
class EditProfileViewModelFamily extends Family<EditProfileState> {
  /// See also [EditProfileViewModel].
  const EditProfileViewModelFamily();

  /// See also [EditProfileViewModel].
  EditProfileViewModelProvider call(
    EditProfilePageArguments arguments,
  ) {
    return EditProfileViewModelProvider(
      arguments,
    );
  }

  @override
  EditProfileViewModelProvider getProviderOverride(
    covariant EditProfileViewModelProvider provider,
  ) {
    return call(
      provider.arguments,
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
  String? get name => r'editProfileViewModelProvider';
}

/// See also [EditProfileViewModel].
class EditProfileViewModelProvider extends AutoDisposeNotifierProviderImpl<
    EditProfileViewModel, EditProfileState> {
  /// See also [EditProfileViewModel].
  EditProfileViewModelProvider(
    this.arguments,
  ) : super.internal(
          () => EditProfileViewModel()..arguments = arguments,
          from: editProfileViewModelProvider,
          name: r'editProfileViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$editProfileViewModelHash,
          dependencies: EditProfileViewModelFamily._dependencies,
          allTransitiveDependencies:
              EditProfileViewModelFamily._allTransitiveDependencies,
        );

  final EditProfilePageArguments arguments;

  @override
  bool operator ==(Object other) {
    return other is EditProfileViewModelProvider &&
        other.arguments == arguments;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, arguments.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  EditProfileState runNotifierBuild(
    covariant EditProfileViewModel notifier,
  ) {
    return notifier.build(
      arguments,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
