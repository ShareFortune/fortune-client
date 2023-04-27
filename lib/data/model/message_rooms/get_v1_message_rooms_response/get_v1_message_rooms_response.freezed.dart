// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_v1_message_rooms_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetV1MessageRoomsResponse _$GetV1MessageRoomsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetV1MessageRoomsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetV1MessageRoomsResponse {
  String get nextToken => throw _privateConstructorUsedError;
  List<MessageRoom> get messageRooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetV1MessageRoomsResponseCopyWith<GetV1MessageRoomsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1MessageRoomsResponseCopyWith<$Res> {
  factory $GetV1MessageRoomsResponseCopyWith(GetV1MessageRoomsResponse value,
          $Res Function(GetV1MessageRoomsResponse) then) =
      _$GetV1MessageRoomsResponseCopyWithImpl<$Res, GetV1MessageRoomsResponse>;
  @useResult
  $Res call({String nextToken, List<MessageRoom> messageRooms});
}

/// @nodoc
class _$GetV1MessageRoomsResponseCopyWithImpl<$Res,
        $Val extends GetV1MessageRoomsResponse>
    implements $GetV1MessageRoomsResponseCopyWith<$Res> {
  _$GetV1MessageRoomsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? messageRooms = null,
  }) {
    return _then(_value.copyWith(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      messageRooms: null == messageRooms
          ? _value.messageRooms
          : messageRooms // ignore: cast_nullable_to_non_nullable
              as List<MessageRoom>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetV1MessageRoomsResponseCopyWith<$Res>
    implements $GetV1MessageRoomsResponseCopyWith<$Res> {
  factory _$$_GetV1MessageRoomsResponseCopyWith(
          _$_GetV1MessageRoomsResponse value,
          $Res Function(_$_GetV1MessageRoomsResponse) then) =
      __$$_GetV1MessageRoomsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nextToken, List<MessageRoom> messageRooms});
}

/// @nodoc
class __$$_GetV1MessageRoomsResponseCopyWithImpl<$Res>
    extends _$GetV1MessageRoomsResponseCopyWithImpl<$Res,
        _$_GetV1MessageRoomsResponse>
    implements _$$_GetV1MessageRoomsResponseCopyWith<$Res> {
  __$$_GetV1MessageRoomsResponseCopyWithImpl(
      _$_GetV1MessageRoomsResponse _value,
      $Res Function(_$_GetV1MessageRoomsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? messageRooms = null,
  }) {
    return _then(_$_GetV1MessageRoomsResponse(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      messageRooms: null == messageRooms
          ? _value._messageRooms
          : messageRooms // ignore: cast_nullable_to_non_nullable
              as List<MessageRoom>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1MessageRoomsResponse implements _GetV1MessageRoomsResponse {
  const _$_GetV1MessageRoomsResponse(
      {required this.nextToken, required final List<MessageRoom> messageRooms})
      : _messageRooms = messageRooms;

  factory _$_GetV1MessageRoomsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetV1MessageRoomsResponseFromJson(json);

  @override
  final String nextToken;
  final List<MessageRoom> _messageRooms;
  @override
  List<MessageRoom> get messageRooms {
    if (_messageRooms is EqualUnmodifiableListView) return _messageRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messageRooms);
  }

  @override
  String toString() {
    return 'GetV1MessageRoomsResponse(nextToken: $nextToken, messageRooms: $messageRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetV1MessageRoomsResponse &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken) &&
            const DeepCollectionEquality()
                .equals(other._messageRooms, _messageRooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nextToken,
      const DeepCollectionEquality().hash(_messageRooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetV1MessageRoomsResponseCopyWith<_$_GetV1MessageRoomsResponse>
      get copyWith => __$$_GetV1MessageRoomsResponseCopyWithImpl<
          _$_GetV1MessageRoomsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetV1MessageRoomsResponseToJson(
      this,
    );
  }
}

abstract class _GetV1MessageRoomsResponse implements GetV1MessageRoomsResponse {
  const factory _GetV1MessageRoomsResponse(
          {required final String nextToken,
          required final List<MessageRoom> messageRooms}) =
      _$_GetV1MessageRoomsResponse;

  factory _GetV1MessageRoomsResponse.fromJson(Map<String, dynamic> json) =
      _$_GetV1MessageRoomsResponse.fromJson;

  @override
  String get nextToken;
  @override
  List<MessageRoom> get messageRooms;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1MessageRoomsResponseCopyWith<_$_GetV1MessageRoomsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
