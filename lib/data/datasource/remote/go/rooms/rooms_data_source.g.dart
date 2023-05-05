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
  Future<RoomIdResponse> create(Map<String, dynamic> body) async {
    const _extra = <String, dynamic>{'append-token': true};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RoomIdResponse>(Options(
      method: 'POST',
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
    final value = RoomIdResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RoomsResponse> fetchRooms({
    int? addressId,
    String? applicationDeadline,
    int? memberNum,
    List<String>? tagIds,
    String? nextToken,
    int? perPage,
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
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RoomsResponse>(Options(
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
    final value = RoomsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RoomDetail> getDetail(String id) async {
    const _extra = <String, dynamic>{'append-token': true};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
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
  Future<RoomsHostResponse> getRoomsHost({
    String? nextToken,
    int? perPage,
  }) async {
    const _extra = <String, dynamic>{'append-token': true};
    final queryParameters = <String, dynamic>{
      r'nextToken': nextToken,
      r'perPage': perPage,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RoomsHostResponse>(Options(
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
    final value = RoomsHostResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RoomsGuestResponse> getRoomsGuest({
    String? nextToken,
    int? perPage,
  }) async {
    const _extra = <String, dynamic>{'append-token': true};
    final queryParameters = <String, dynamic>{
      r'nextToken': nextToken,
      r'perPage': perPage,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RoomsGuestResponse>(Options(
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
    final value = RoomsGuestResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RoomIdResponse> update(
    String id,
    Map<String, dynamic> body,
  ) async {
    const _extra = <String, dynamic>{'append-token': true};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RoomIdResponse>(Options(
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
    final value = RoomIdResponse.fromJson(_result.data!);
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
