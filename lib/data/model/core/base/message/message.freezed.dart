// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "sentAt")
  DateTime get sendAt => throw _privateConstructorUsedError;
  @JsonKey(name: "text")
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: "messageIamageURL")
  String? get messageIamageURL => throw _privateConstructorUsedError;
  @JsonKey(name: "fromUser")
  MessageFromUser get fromUser => throw _privateConstructorUsedError;
  @JsonKey(name: "readCount")
  int get readCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "sentAt") DateTime sendAt,
      @JsonKey(name: "text") String text,
      @JsonKey(name: "messageIamageURL") String? messageIamageURL,
      @JsonKey(name: "fromUser") MessageFromUser fromUser,
      @JsonKey(name: "readCount") int readCount});

  $MessageFromUserCopyWith<$Res> get fromUser;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sendAt = null,
    Object? text = null,
    Object? messageIamageURL = freezed,
    Object? fromUser = null,
    Object? readCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sendAt: null == sendAt
          ? _value.sendAt
          : sendAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      messageIamageURL: freezed == messageIamageURL
          ? _value.messageIamageURL
          : messageIamageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      fromUser: null == fromUser
          ? _value.fromUser
          : fromUser // ignore: cast_nullable_to_non_nullable
              as MessageFromUser,
      readCount: null == readCount
          ? _value.readCount
          : readCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageFromUserCopyWith<$Res> get fromUser {
    return $MessageFromUserCopyWith<$Res>(_value.fromUser, (value) {
      return _then(_value.copyWith(fromUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "sentAt") DateTime sendAt,
      @JsonKey(name: "text") String text,
      @JsonKey(name: "messageIamageURL") String? messageIamageURL,
      @JsonKey(name: "fromUser") MessageFromUser fromUser,
      @JsonKey(name: "readCount") int readCount});

  @override
  $MessageFromUserCopyWith<$Res> get fromUser;
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sendAt = null,
    Object? text = null,
    Object? messageIamageURL = freezed,
    Object? fromUser = null,
    Object? readCount = null,
  }) {
    return _then(_$_Message(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sendAt: null == sendAt
          ? _value.sendAt
          : sendAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      messageIamageURL: freezed == messageIamageURL
          ? _value.messageIamageURL
          : messageIamageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      fromUser: null == fromUser
          ? _value.fromUser
          : fromUser // ignore: cast_nullable_to_non_nullable
              as MessageFromUser,
      readCount: null == readCount
          ? _value.readCount
          : readCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  const _$_Message(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "sentAt") required this.sendAt,
      @JsonKey(name: "text") required this.text,
      @JsonKey(name: "messageIamageURL") required this.messageIamageURL,
      @JsonKey(name: "fromUser") required this.fromUser,
      @JsonKey(name: "readCount") required this.readCount});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "sentAt")
  final DateTime sendAt;
  @override
  @JsonKey(name: "text")
  final String text;
  @override
  @JsonKey(name: "messageIamageURL")
  final String? messageIamageURL;
  @override
  @JsonKey(name: "fromUser")
  final MessageFromUser fromUser;
  @override
  @JsonKey(name: "readCount")
  final int readCount;

  @override
  String toString() {
    return 'Message(id: $id, sendAt: $sendAt, text: $text, messageIamageURL: $messageIamageURL, fromUser: $fromUser, readCount: $readCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sendAt, sendAt) || other.sendAt == sendAt) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.messageIamageURL, messageIamageURL) ||
                other.messageIamageURL == messageIamageURL) &&
            (identical(other.fromUser, fromUser) ||
                other.fromUser == fromUser) &&
            (identical(other.readCount, readCount) ||
                other.readCount == readCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, sendAt, text, messageIamageURL, fromUser, readCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {@JsonKey(name: "id")
          required final String id,
      @JsonKey(name: "sentAt")
          required final DateTime sendAt,
      @JsonKey(name: "text")
          required final String text,
      @JsonKey(name: "messageIamageURL")
          required final String? messageIamageURL,
      @JsonKey(name: "fromUser")
          required final MessageFromUser fromUser,
      @JsonKey(name: "readCount")
          required final int readCount}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "sentAt")
  DateTime get sendAt;
  @override
  @JsonKey(name: "text")
  String get text;
  @override
  @JsonKey(name: "messageIamageURL")
  String? get messageIamageURL;
  @override
  @JsonKey(name: "fromUser")
  MessageFromUser get fromUser;
  @override
  @JsonKey(name: "readCount")
  int get readCount;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
