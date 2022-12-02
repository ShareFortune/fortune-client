// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_room_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageRoomListState {
  List<MessageRoomListItemState> get messageRooms =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageRoomListStateCopyWith<MessageRoomListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageRoomListStateCopyWith<$Res> {
  factory $MessageRoomListStateCopyWith(MessageRoomListState value,
          $Res Function(MessageRoomListState) then) =
      _$MessageRoomListStateCopyWithImpl<$Res, MessageRoomListState>;
  @useResult
  $Res call({List<MessageRoomListItemState> messageRooms});
}

/// @nodoc
class _$MessageRoomListStateCopyWithImpl<$Res,
        $Val extends MessageRoomListState>
    implements $MessageRoomListStateCopyWith<$Res> {
  _$MessageRoomListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageRooms = null,
  }) {
    return _then(_value.copyWith(
      messageRooms: null == messageRooms
          ? _value.messageRooms
          : messageRooms // ignore: cast_nullable_to_non_nullable
              as List<MessageRoomListItemState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageRoomListStateCopyWith<$Res>
    implements $MessageRoomListStateCopyWith<$Res> {
  factory _$$_MessageRoomListStateCopyWith(_$_MessageRoomListState value,
          $Res Function(_$_MessageRoomListState) then) =
      __$$_MessageRoomListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MessageRoomListItemState> messageRooms});
}

/// @nodoc
class __$$_MessageRoomListStateCopyWithImpl<$Res>
    extends _$MessageRoomListStateCopyWithImpl<$Res, _$_MessageRoomListState>
    implements _$$_MessageRoomListStateCopyWith<$Res> {
  __$$_MessageRoomListStateCopyWithImpl(_$_MessageRoomListState _value,
      $Res Function(_$_MessageRoomListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageRooms = null,
  }) {
    return _then(_$_MessageRoomListState(
      messageRooms: null == messageRooms
          ? _value._messageRooms
          : messageRooms // ignore: cast_nullable_to_non_nullable
              as List<MessageRoomListItemState>,
    ));
  }
}

/// @nodoc

class _$_MessageRoomListState implements _MessageRoomListState {
  const _$_MessageRoomListState(
      {final List<MessageRoomListItemState> messageRooms = const []})
      : _messageRooms = messageRooms;

  final List<MessageRoomListItemState> _messageRooms;
  @override
  @JsonKey()
  List<MessageRoomListItemState> get messageRooms {
    if (_messageRooms is EqualUnmodifiableListView) return _messageRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messageRooms);
  }

  @override
  String toString() {
    return 'MessageRoomListState(messageRooms: $messageRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageRoomListState &&
            const DeepCollectionEquality()
                .equals(other._messageRooms, _messageRooms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messageRooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageRoomListStateCopyWith<_$_MessageRoomListState> get copyWith =>
      __$$_MessageRoomListStateCopyWithImpl<_$_MessageRoomListState>(
          this, _$identity);
}

abstract class _MessageRoomListState implements MessageRoomListState {
  const factory _MessageRoomListState(
          {final List<MessageRoomListItemState> messageRooms}) =
      _$_MessageRoomListState;

  @override
  List<MessageRoomListItemState> get messageRooms;
  @override
  @JsonKey(ignore: true)
  _$$_MessageRoomListStateCopyWith<_$_MessageRoomListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageRoomListItemState {
  DateTime get postedAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get userIcon => throw _privateConstructorUsedError;
  int get notifications => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageRoomListItemStateCopyWith<MessageRoomListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageRoomListItemStateCopyWith<$Res> {
  factory $MessageRoomListItemStateCopyWith(MessageRoomListItemState value,
          $Res Function(MessageRoomListItemState) then) =
      _$MessageRoomListItemStateCopyWithImpl<$Res, MessageRoomListItemState>;
  @useResult
  $Res call(
      {DateTime postedAt,
      String title,
      String content,
      String userIcon,
      int notifications});
}

/// @nodoc
class _$MessageRoomListItemStateCopyWithImpl<$Res,
        $Val extends MessageRoomListItemState>
    implements $MessageRoomListItemStateCopyWith<$Res> {
  _$MessageRoomListItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postedAt = null,
    Object? title = null,
    Object? content = null,
    Object? userIcon = null,
    Object? notifications = null,
  }) {
    return _then(_value.copyWith(
      postedAt: null == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      userIcon: null == userIcon
          ? _value.userIcon
          : userIcon // ignore: cast_nullable_to_non_nullable
              as String,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageRoomListItemStateCopyWith<$Res>
    implements $MessageRoomListItemStateCopyWith<$Res> {
  factory _$$_MessageRoomListItemStateCopyWith(
          _$_MessageRoomListItemState value,
          $Res Function(_$_MessageRoomListItemState) then) =
      __$$_MessageRoomListItemStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime postedAt,
      String title,
      String content,
      String userIcon,
      int notifications});
}

/// @nodoc
class __$$_MessageRoomListItemStateCopyWithImpl<$Res>
    extends _$MessageRoomListItemStateCopyWithImpl<$Res,
        _$_MessageRoomListItemState>
    implements _$$_MessageRoomListItemStateCopyWith<$Res> {
  __$$_MessageRoomListItemStateCopyWithImpl(_$_MessageRoomListItemState _value,
      $Res Function(_$_MessageRoomListItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postedAt = null,
    Object? title = null,
    Object? content = null,
    Object? userIcon = null,
    Object? notifications = null,
  }) {
    return _then(_$_MessageRoomListItemState(
      postedAt: null == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      userIcon: null == userIcon
          ? _value.userIcon
          : userIcon // ignore: cast_nullable_to_non_nullable
              as String,
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MessageRoomListItemState implements _MessageRoomListItemState {
  const _$_MessageRoomListItemState(
      {required this.postedAt,
      required this.title,
      required this.content,
      required this.userIcon,
      required this.notifications});

  @override
  final DateTime postedAt;
  @override
  final String title;
  @override
  final String content;
  @override
  final String userIcon;
  @override
  final int notifications;

  @override
  String toString() {
    return 'MessageRoomListItemState(postedAt: $postedAt, title: $title, content: $content, userIcon: $userIcon, notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageRoomListItemState &&
            (identical(other.postedAt, postedAt) ||
                other.postedAt == postedAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.userIcon, userIcon) ||
                other.userIcon == userIcon) &&
            (identical(other.notifications, notifications) ||
                other.notifications == notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, postedAt, title, content, userIcon, notifications);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageRoomListItemStateCopyWith<_$_MessageRoomListItemState>
      get copyWith => __$$_MessageRoomListItemStateCopyWithImpl<
          _$_MessageRoomListItemState>(this, _$identity);
}

abstract class _MessageRoomListItemState implements MessageRoomListItemState {
  const factory _MessageRoomListItemState(
      {required final DateTime postedAt,
      required final String title,
      required final String content,
      required final String userIcon,
      required final int notifications}) = _$_MessageRoomListItemState;

  @override
  DateTime get postedAt;
  @override
  String get title;
  @override
  String get content;
  @override
  String get userIcon;
  @override
  int get notifications;
  @override
  @JsonKey(ignore: true)
  _$$_MessageRoomListItemStateCopyWith<_$_MessageRoomListItemState>
      get copyWith => throw _privateConstructorUsedError;
}
