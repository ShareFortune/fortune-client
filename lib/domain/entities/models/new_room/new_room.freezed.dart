// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewRoom {
  /// ルームタイトル
  String get title => throw _privateConstructorUsedError;

  /// 内容
  String get content => throw _privateConstructorUsedError;

  /// 募集人数
  int get membersNum => throw _privateConstructorUsedError;

  /// 募集年齢
  AgeGroup get ageGroup => throw _privateConstructorUsedError;

  /// 開催予定地
  Address get address => throw _privateConstructorUsedError;

  /// 設定タグ
  List<Tag> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewRoomCopyWith<NewRoom> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewRoomCopyWith<$Res> {
  factory $NewRoomCopyWith(NewRoom value, $Res Function(NewRoom) then) =
      _$NewRoomCopyWithImpl<$Res, NewRoom>;
  @useResult
  $Res call(
      {String title,
      String content,
      int membersNum,
      AgeGroup ageGroup,
      Address address,
      List<Tag> tags});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$NewRoomCopyWithImpl<$Res, $Val extends NewRoom>
    implements $NewRoomCopyWith<$Res> {
  _$NewRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? membersNum = null,
    Object? ageGroup = null,
    Object? address = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int,
      ageGroup: null == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewRoomCopyWith<$Res> implements $NewRoomCopyWith<$Res> {
  factory _$$_NewRoomCopyWith(
          _$_NewRoom value, $Res Function(_$_NewRoom) then) =
      __$$_NewRoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String content,
      int membersNum,
      AgeGroup ageGroup,
      Address address,
      List<Tag> tags});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_NewRoomCopyWithImpl<$Res>
    extends _$NewRoomCopyWithImpl<$Res, _$_NewRoom>
    implements _$$_NewRoomCopyWith<$Res> {
  __$$_NewRoomCopyWithImpl(_$_NewRoom _value, $Res Function(_$_NewRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? membersNum = null,
    Object? ageGroup = null,
    Object? address = null,
    Object? tags = null,
  }) {
    return _then(_$_NewRoom(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      membersNum: null == membersNum
          ? _value.membersNum
          : membersNum // ignore: cast_nullable_to_non_nullable
              as int,
      ageGroup: null == ageGroup
          ? _value.ageGroup
          : ageGroup // ignore: cast_nullable_to_non_nullable
              as AgeGroup,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ));
  }
}

/// @nodoc

class _$_NewRoom implements _NewRoom {
  const _$_NewRoom(
      {required this.title,
      required this.content,
      required this.membersNum,
      required this.ageGroup,
      required this.address,
      required final List<Tag> tags})
      : assert(title.length < 3, 'ユーザ名は3文字以上です。'),
        assert(title.length > 10, 'ユーザ名は10文字以下です。'),
        _tags = tags;

  /// ルームタイトル
  @override
  final String title;

  /// 内容
  @override
  final String content;

  /// 募集人数
  @override
  final int membersNum;

  /// 募集年齢
  @override
  final AgeGroup ageGroup;

  /// 開催予定地
  @override
  final Address address;

  /// 設定タグ
  final List<Tag> _tags;

  /// 設定タグ
  @override
  List<Tag> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'NewRoom(title: $title, content: $content, membersNum: $membersNum, ageGroup: $ageGroup, address: $address, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewRoom &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.membersNum, membersNum) ||
                other.membersNum == membersNum) &&
            (identical(other.ageGroup, ageGroup) ||
                other.ageGroup == ageGroup) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, content, membersNum,
      ageGroup, address, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewRoomCopyWith<_$_NewRoom> get copyWith =>
      __$$_NewRoomCopyWithImpl<_$_NewRoom>(this, _$identity);
}

abstract class _NewRoom implements NewRoom {
  const factory _NewRoom(
      {required final String title,
      required final String content,
      required final int membersNum,
      required final AgeGroup ageGroup,
      required final Address address,
      required final List<Tag> tags}) = _$_NewRoom;

  @override

  /// ルームタイトル
  String get title;
  @override

  /// 内容
  String get content;
  @override

  /// 募集人数
  int get membersNum;
  @override

  /// 募集年齢
  AgeGroup get ageGroup;
  @override

  /// 開催予定地
  Address get address;
  @override

  /// 設定タグ
  List<Tag> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_NewRoomCopyWith<_$_NewRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
