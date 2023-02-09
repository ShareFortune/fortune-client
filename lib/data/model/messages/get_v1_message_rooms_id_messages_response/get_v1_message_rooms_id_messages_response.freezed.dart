// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_v1_message_rooms_id_messages_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetV1MessageRoomsIdMessagesResponse
    _$GetV1MessageRoomsIdMessagesResponseFromJson(Map<String, dynamic> json) {
  return _GetV1MessageRoomsIdMessagesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetV1MessageRoomsIdMessagesResponse {
  @JsonKey(name: "nextToken")
  String get nextToken => throw _privateConstructorUsedError;
  @JsonKey(name: "messages")
  List<Message> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetV1MessageRoomsIdMessagesResponseCopyWith<
          GetV1MessageRoomsIdMessagesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetV1MessageRoomsIdMessagesResponseCopyWith<$Res> {
  factory $GetV1MessageRoomsIdMessagesResponseCopyWith(
          GetV1MessageRoomsIdMessagesResponse value,
          $Res Function(GetV1MessageRoomsIdMessagesResponse) then) =
      _$GetV1MessageRoomsIdMessagesResponseCopyWithImpl<$Res,
          GetV1MessageRoomsIdMessagesResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "messages") List<Message> data});
}

/// @nodoc
class _$GetV1MessageRoomsIdMessagesResponseCopyWithImpl<$Res,
        $Val extends GetV1MessageRoomsIdMessagesResponse>
    implements $GetV1MessageRoomsIdMessagesResponseCopyWith<$Res> {
  _$GetV1MessageRoomsIdMessagesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetV1MessageRoomsIdMessagesResponseCopyWith<$Res>
    implements $GetV1MessageRoomsIdMessagesResponseCopyWith<$Res> {
  factory _$$_GetV1MessageRoomsIdMessagesResponseCopyWith(
          _$_GetV1MessageRoomsIdMessagesResponse value,
          $Res Function(_$_GetV1MessageRoomsIdMessagesResponse) then) =
      __$$_GetV1MessageRoomsIdMessagesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nextToken") String nextToken,
      @JsonKey(name: "messages") List<Message> data});
}

/// @nodoc
class __$$_GetV1MessageRoomsIdMessagesResponseCopyWithImpl<$Res>
    extends _$GetV1MessageRoomsIdMessagesResponseCopyWithImpl<$Res,
        _$_GetV1MessageRoomsIdMessagesResponse>
    implements _$$_GetV1MessageRoomsIdMessagesResponseCopyWith<$Res> {
  __$$_GetV1MessageRoomsIdMessagesResponseCopyWithImpl(
      _$_GetV1MessageRoomsIdMessagesResponse _value,
      $Res Function(_$_GetV1MessageRoomsIdMessagesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = null,
    Object? data = null,
  }) {
    return _then(_$_GetV1MessageRoomsIdMessagesResponse(
      nextToken: null == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetV1MessageRoomsIdMessagesResponse
    implements _GetV1MessageRoomsIdMessagesResponse {
  const _$_GetV1MessageRoomsIdMessagesResponse(
      {@JsonKey(name: "nextToken") required this.nextToken,
      @JsonKey(name: "messages") required final List<Message> data})
      : _data = data;

  factory _$_GetV1MessageRoomsIdMessagesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetV1MessageRoomsIdMessagesResponseFromJson(json);

  @override
  @JsonKey(name: "nextToken")
  final String nextToken;
  final List<Message> _data;
  @override
  @JsonKey(name: "messages")
  List<Message> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetV1MessageRoomsIdMessagesResponse(nextToken: $nextToken, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetV1MessageRoomsIdMessagesResponse &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, nextToken, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetV1MessageRoomsIdMessagesResponseCopyWith<
          _$_GetV1MessageRoomsIdMessagesResponse>
      get copyWith => __$$_GetV1MessageRoomsIdMessagesResponseCopyWithImpl<
          _$_GetV1MessageRoomsIdMessagesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetV1MessageRoomsIdMessagesResponseToJson(
      this,
    );
  }
}

abstract class _GetV1MessageRoomsIdMessagesResponse
    implements GetV1MessageRoomsIdMessagesResponse {
  const factory _GetV1MessageRoomsIdMessagesResponse(
          {@JsonKey(name: "nextToken") required final String nextToken,
          @JsonKey(name: "messages") required final List<Message> data}) =
      _$_GetV1MessageRoomsIdMessagesResponse;

  factory _GetV1MessageRoomsIdMessagesResponse.fromJson(
          Map<String, dynamic> json) =
      _$_GetV1MessageRoomsIdMessagesResponse.fromJson;

  @override
  @JsonKey(name: "nextToken")
  String get nextToken;
  @override
  @JsonKey(name: "messages")
  List<Message> get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetV1MessageRoomsIdMessagesResponseCopyWith<
          _$_GetV1MessageRoomsIdMessagesResponse>
      get copyWith => throw _privateConstructorUsedError;
}
