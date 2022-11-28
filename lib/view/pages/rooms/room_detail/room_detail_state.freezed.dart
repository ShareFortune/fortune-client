// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'room_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomDetailState {
  String get title => throw _privateConstructorUsedError;
  String get hostIcon => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  List<dynamic> get tags => throw _privateConstructorUsedError;
  List<dynamic> get members => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomDetailStateCopyWith<RoomDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDetailStateCopyWith<$Res> {
  factory $RoomDetailStateCopyWith(
          RoomDetailState value, $Res Function(RoomDetailState) then) =
      _$RoomDetailStateCopyWithImpl<$Res, RoomDetailState>;
  @useResult
  $Res call(
      {String title,
      String hostIcon,
      String explanation,
      List<dynamic> tags,
      List<dynamic> members});
}

/// @nodoc
class _$RoomDetailStateCopyWithImpl<$Res, $Val extends RoomDetailState>
    implements $RoomDetailStateCopyWith<$Res> {
  _$RoomDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? hostIcon = null,
    Object? explanation = null,
    Object? tags = null,
    Object? members = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hostIcon: null == hostIcon
          ? _value.hostIcon
          : hostIcon // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoomDetailStateCopyWith<$Res>
    implements $RoomDetailStateCopyWith<$Res> {
  factory _$$_RoomDetailStateCopyWith(
          _$_RoomDetailState value, $Res Function(_$_RoomDetailState) then) =
      __$$_RoomDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String hostIcon,
      String explanation,
      List<dynamic> tags,
      List<dynamic> members});
}

/// @nodoc
class __$$_RoomDetailStateCopyWithImpl<$Res>
    extends _$RoomDetailStateCopyWithImpl<$Res, _$_RoomDetailState>
    implements _$$_RoomDetailStateCopyWith<$Res> {
  __$$_RoomDetailStateCopyWithImpl(
      _$_RoomDetailState _value, $Res Function(_$_RoomDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? hostIcon = null,
    Object? explanation = null,
    Object? tags = null,
    Object? members = null,
  }) {
    return _then(_$_RoomDetailState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hostIcon: null == hostIcon
          ? _value.hostIcon
          : hostIcon // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_RoomDetailState implements _RoomDetailState {
  const _$_RoomDetailState(
      {this.title = "",
      this.hostIcon = "",
      this.explanation = "",
      final List<dynamic> tags = const [],
      final List<dynamic> members = const []})
      : _tags = tags,
        _members = members;

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String hostIcon;
  @override
  @JsonKey()
  final String explanation;
  final List<dynamic> _tags;
  @override
  @JsonKey()
  List<dynamic> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<dynamic> _members;
  @override
  @JsonKey()
  List<dynamic> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'RoomDetailState(title: $title, hostIcon: $hostIcon, explanation: $explanation, tags: $tags, members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomDetailState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.hostIcon, hostIcon) ||
                other.hostIcon == hostIcon) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      hostIcon,
      explanation,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoomDetailStateCopyWith<_$_RoomDetailState> get copyWith =>
      __$$_RoomDetailStateCopyWithImpl<_$_RoomDetailState>(this, _$identity);
}

abstract class _RoomDetailState implements RoomDetailState {
  const factory _RoomDetailState(
      {final String title,
      final String hostIcon,
      final String explanation,
      final List<dynamic> tags,
      final List<dynamic> members}) = _$_RoomDetailState;

  @override
  String get title;
  @override
  String get hostIcon;
  @override
  String get explanation;
  @override
  List<dynamic> get tags;
  @override
  List<dynamic> get members;
  @override
  @JsonKey(ignore: true)
  _$$_RoomDetailStateCopyWith<_$_RoomDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
