// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tvmaze.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteShow _$RemoteShowFromJson(Map<String, dynamic> json) => _RemoteShow(
  id: (json['id'] as num).toInt(),
  url: json['url'] as String,
  name: json['name'] as String,
  type: json['type'] as String,
  language: json['language'] as String,
  genres: (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
  status: json['status'] as String,
  runtime: (json['runtime'] as num?)?.toInt(),
  averageRuntime: (json['averageRuntime'] as num).toInt(),
  premiered: json['premiered'] as String,
  ended: json['ended'] as String?,
  officialSite: json['officialSite'] as String?,
  schedule: RemoteShowSchedule.fromJson(
    json['schedule'] as Map<String, dynamic>,
  ),
  rating: RemoteShowRating.fromJson(json['rating'] as Map<String, dynamic>),
  weight: (json['weight'] as num).toInt(),
  network: json['network'] == null
      ? null
      : RemoteShowNetwork.fromJson(json['network'] as Map<String, dynamic>),
  webChannel: json['webChannel'],
  dvdCountry: json['dvdCountry'],
  externals: json['externals'] as Map<String, dynamic>?,
  image: RemoteShowImage.fromJson(json['image'] as Map<String, dynamic>),
  summary: json['summary'] as String,
  updated: (json['updated'] as num).toInt(),
);

Map<String, dynamic> _$RemoteShowToJson(_RemoteShow instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'type': instance.type,
      'language': instance.language,
      'genres': instance.genres,
      'status': instance.status,
      'runtime': instance.runtime,
      'averageRuntime': instance.averageRuntime,
      'premiered': instance.premiered,
      'ended': instance.ended,
      'officialSite': instance.officialSite,
      'schedule': instance.schedule,
      'rating': instance.rating,
      'weight': instance.weight,
      'network': instance.network,
      'webChannel': instance.webChannel,
      'dvdCountry': instance.dvdCountry,
      'externals': instance.externals,
      'image': instance.image,
      'summary': instance.summary,
      'updated': instance.updated,
    };

_RemoteShowSchedule _$RemoteShowScheduleFromJson(Map<String, dynamic> json) =>
    _RemoteShowSchedule(
      time: json['time'] as String,
      days: (json['days'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$RemoteShowScheduleToJson(_RemoteShowSchedule instance) =>
    <String, dynamic>{'time': instance.time, 'days': instance.days};

_RemoteShowRating _$RemoteShowRatingFromJson(Map<String, dynamic> json) =>
    _RemoteShowRating(average: (json['average'] as num?)?.toDouble());

Map<String, dynamic> _$RemoteShowRatingToJson(_RemoteShowRating instance) =>
    <String, dynamic>{'average': instance.average};

_RemoteShowNetwork _$RemoteShowNetworkFromJson(Map<String, dynamic> json) =>
    _RemoteShowNetwork(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      country: RemoteShowNetworkCountry.fromJson(
        json['country'] as Map<String, dynamic>,
      ),
      officialSite: json['officialSite'] as String?,
    );

Map<String, dynamic> _$RemoteShowNetworkToJson(_RemoteShowNetwork instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'officialSite': instance.officialSite,
    };

_RemoteShowNetworkCountry _$RemoteShowNetworkCountryFromJson(
  Map<String, dynamic> json,
) => _RemoteShowNetworkCountry(
  name: json['name'] as String,
  code: json['code'] as String,
  timezone: json['timezone'] as String,
);

Map<String, dynamic> _$RemoteShowNetworkCountryToJson(
  _RemoteShowNetworkCountry instance,
) => <String, dynamic>{
  'name': instance.name,
  'code': instance.code,
  'timezone': instance.timezone,
};

_RemoteShowImage _$RemoteShowImageFromJson(Map<String, dynamic> json) =>
    _RemoteShowImage(
      medium: json['medium'] as String,
      original: json['original'] as String,
    );

Map<String, dynamic> _$RemoteShowImageToJson(_RemoteShowImage instance) =>
    <String, dynamic>{'medium': instance.medium, 'original': instance.original};

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main,avoid_redundant_argument_values

class _TVMazeClient implements TVMazeClient {
  _TVMazeClient(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= 'https://api.tvmaze.com';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<List<RemoteShow>> getShows() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<List<RemoteShow>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/shows',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<List<dynamic>>(_options);
    late List<RemoteShow> _value;
    try {
      _value = _result.data!
          .map((dynamic i) => RemoteShow.fromJson(i as Map<String, dynamic>))
          .toList();
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<RemoteShow> getShowById(int id) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<RemoteShow>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/shows/${id}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late RemoteShow _value;
    try {
      _value = RemoteShow.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
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

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// dart format on
