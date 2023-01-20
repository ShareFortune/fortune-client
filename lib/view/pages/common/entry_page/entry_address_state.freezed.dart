// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry_address_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntryAddressState {
  Address? get adress => throw _privateConstructorUsedError;
  AsyncValue<List<Address>> get searchResults =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntryAddressStateCopyWith<EntryAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryAddressStateCopyWith<$Res> {
  factory $EntryAddressStateCopyWith(
          EntryAddressState value, $Res Function(EntryAddressState) then) =
      _$EntryAddressStateCopyWithImpl<$Res, EntryAddressState>;
  @useResult
  $Res call({Address? adress, AsyncValue<List<Address>> searchResults});

  $AddressCopyWith<$Res>? get adress;
}

/// @nodoc
class _$EntryAddressStateCopyWithImpl<$Res, $Val extends EntryAddressState>
    implements $EntryAddressStateCopyWith<$Res> {
  _$EntryAddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adress = freezed,
    Object? searchResults = null,
  }) {
    return _then(_value.copyWith(
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as Address?,
      searchResults: null == searchResults
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Address>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get adress {
    if (_value.adress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.adress!, (value) {
      return _then(_value.copyWith(adress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EntryAddresStateCopyWith<$Res>
    implements $EntryAddressStateCopyWith<$Res> {
  factory _$$_EntryAddresStateCopyWith(
          _$_EntryAddresState value, $Res Function(_$_EntryAddresState) then) =
      __$$_EntryAddresStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address? adress, AsyncValue<List<Address>> searchResults});

  @override
  $AddressCopyWith<$Res>? get adress;
}

/// @nodoc
class __$$_EntryAddresStateCopyWithImpl<$Res>
    extends _$EntryAddressStateCopyWithImpl<$Res, _$_EntryAddresState>
    implements _$$_EntryAddresStateCopyWith<$Res> {
  __$$_EntryAddresStateCopyWithImpl(
      _$_EntryAddresState _value, $Res Function(_$_EntryAddresState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adress = freezed,
    Object? searchResults = null,
  }) {
    return _then(_$_EntryAddresState(
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as Address?,
      searchResults: null == searchResults
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Address>>,
    ));
  }
}

/// @nodoc

class _$_EntryAddresState implements _EntryAddresState {
  const _$_EntryAddresState(
      {this.adress = null, this.searchResults = const AsyncData([])});

  @override
  @JsonKey()
  final Address? adress;
  @override
  @JsonKey()
  final AsyncValue<List<Address>> searchResults;

  @override
  String toString() {
    return 'EntryAddressState(adress: $adress, searchResults: $searchResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntryAddresState &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.searchResults, searchResults) ||
                other.searchResults == searchResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, adress, searchResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntryAddresStateCopyWith<_$_EntryAddresState> get copyWith =>
      __$$_EntryAddresStateCopyWithImpl<_$_EntryAddresState>(this, _$identity);
}

abstract class _EntryAddresState implements EntryAddressState {
  const factory _EntryAddresState(
      {final Address? adress,
      final AsyncValue<List<Address>> searchResults}) = _$_EntryAddresState;

  @override
  Address? get adress;
  @override
  AsyncValue<List<Address>> get searchResults;
  @override
  @JsonKey(ignore: true)
  _$$_EntryAddresStateCopyWith<_$_EntryAddresState> get copyWith =>
      throw _privateConstructorUsedError;
}
