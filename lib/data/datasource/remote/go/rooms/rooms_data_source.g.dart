// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_data_source.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RoomsDataSource implements RoomsDataSource {
  _RoomsDataSource(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Rooms> search({
    addressId,
    applicationDeadline,
    memberNum,
    tagIds,
    nextToken,
    perPage,
  }) async {
    const _extra = <String, dynamic>{'append-token': true};
    final queryParameters = <String, dynamic>{
      r'addressId': addressId,
      r'applicationDeadline': applicationDeadline,
      r'memberNum': memberNum,
      r'tagIds': tagIds,
      r'nextToken': nextToken,
      r'perPage': perPage,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result =
        await _dio.fetch<Map<String, dynamic>>(_setStreamType<Rooms>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rooms',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Rooms.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RoomDetail> getDetail(id) async {
    const _extra = <String, dynamic>{'append-token': true};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RoomDetail>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rooms/${id}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RoomDetail.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ParticipantRooms<ParticipantRoomAsHost>> getHost({
    nextToken,
    perPage,
  }) async {
    const _extra = <String, dynamic>{'append-token': true};
    final queryParameters = <String, dynamic>{
      r'nextToken': nextToken,
      r'perPage': perPage,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ParticipantRooms<ParticipantRoomAsHost>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rooms/host',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ParticipantRooms<ParticipantRoomAsHost>.fromJson(
      _result.data!,
      (json) => ParticipantRoomAsHost.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<ParticipantRooms<ParticipantRoomAsGuest>> getGuest({
    nextToken,
    perPage,
  }) async {
    const _extra = <String, dynamic>{'append-token': true};
    final queryParameters = <String, dynamic>{
      r'nextToken': nextToken,
      r'perPage': perPage,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ParticipantRooms<ParticipantRoomAsGuest>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/rooms/guest',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ParticipantRooms<ParticipantRoomAsGuest>.fromJson(
      _result.data!,
      (json) => ParticipantRoomAsGuest.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
