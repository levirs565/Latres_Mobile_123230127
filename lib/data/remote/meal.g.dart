// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoteMeal _$RemoteMealFromJson(Map<String, dynamic> json) => _RemoteMeal(
  id: json['idMeal'] as String,
  meal: json['strMeal'] as String,
  mealThumb: json['strMealThumb'] as String,
  area: json['strArea'] as String?,
  country: json['strCountry'] as String,
);

Map<String, dynamic> _$RemoteMealToJson(_RemoteMeal instance) =>
    <String, dynamic>{
      'idMeal': instance.id,
      'strMeal': instance.meal,
      'strMealThumb': instance.mealThumb,
      'strArea': instance.area,
      'strCountry': instance.country,
    };

_RemoteMealList _$RemoteMealListFromJson(Map<String, dynamic> json) =>
    _RemoteMealList(
      meals: (json['meals'] as List<dynamic>)
          .map((e) => RemoteMeal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RemoteMealListToJson(_RemoteMealList instance) =>
    <String, dynamic>{'meals': instance.meals};

_RemoteMealDetail _$RemoteMealDetailFromJson(Map<String, dynamic> json) =>
    _RemoteMealDetail(
      id: json['idMeal'] as String,
      meal: json['strMeal'] as String,
      mealAlternate: json['strMealAlternate'] as String?,
      category: json['strCategory'] as String,
      area: json['strArea'] as String?,
      country: json['strCountry'] as String,
      instructions: json['strInstructions'] as String,
      mealThumb: json['strMealThumb'] as String,
      tags: json['strTags'] as String?,
      youtube: json['strYoutube'] as String,
      ingredients: _ingredientsFromJson(
        json['ingredients'] as Map<String, dynamic>,
      ),
      measures: _measureFromJson(json['measures'] as Map<String, dynamic>),
      source: json['strSource'] as String?,
      imageSource: json['strImageSource'] as String?,
      creativeCommonsConfirmed: json['strCreativeCommonsConfirmed'] as String?,
      dateModified: json['dateModified'] as String?,
    );

Map<String, dynamic> _$RemoteMealDetailToJson(_RemoteMealDetail instance) =>
    <String, dynamic>{
      'idMeal': instance.id,
      'strMeal': instance.meal,
      'strMealAlternate': instance.mealAlternate,
      'strCategory': instance.category,
      'strArea': instance.area,
      'strCountry': instance.country,
      'strInstructions': instance.instructions,
      'strMealThumb': instance.mealThumb,
      'strTags': instance.tags,
      'strYoutube': instance.youtube,
      'ingredients': instance.ingredients,
      'measures': instance.measures,
      'strSource': instance.source,
      'strImageSource': instance.imageSource,
      'strCreativeCommonsConfirmed': instance.creativeCommonsConfirmed,
      'dateModified': instance.dateModified,
    };

_RemoteMealDetailList _$RemoteMealDetailListFromJson(
  Map<String, dynamic> json,
) => _RemoteMealDetailList(
  meals: (json['meals'] as List<dynamic>)
      .map((e) => RemoteMealDetail.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$RemoteMealDetailListToJson(
  _RemoteMealDetailList instance,
) => <String, dynamic>{'meals': instance.meals};

_RemoteCategory _$RemoteCategoryFromJson(Map<String, dynamic> json) =>
    _RemoteCategory(
      id: json['idCategory'] as String,
      name: json['strCategory'] as String,
      thumb: json['strCategoryThumb'] as String,
      description: json['strCategoryDescription'] as String,
    );

Map<String, dynamic> _$RemoteCategoryToJson(_RemoteCategory instance) =>
    <String, dynamic>{
      'idCategory': instance.id,
      'strCategory': instance.name,
      'strCategoryThumb': instance.thumb,
      'strCategoryDescription': instance.description,
    };

_RemoteCategoryList _$RemoteCategoryListFromJson(Map<String, dynamic> json) =>
    _RemoteCategoryList(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => RemoteCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RemoteCategoryListToJson(_RemoteCategoryList instance) =>
    <String, dynamic>{'categories': instance.categories};

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main

class _TheMealDBClient implements TheMealDBClient {
  _TheMealDBClient(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= 'https://www.themealdb.com/api/json/v1/1';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<RemoteMealList> getMealsByCategory(String category) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'c': category};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<RemoteMealList>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/filter.php',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late RemoteMealList _value;
    try {
      _value = RemoteMealList.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<RemoteMealDetailList> getMealDetail(String id) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'i': id};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<RemoteMealDetailList>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/lookup.php',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late RemoteMealDetailList _value;
    try {
      _value = RemoteMealDetailList.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<RemoteCategoryList> getCategories() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<RemoteCategoryList>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/categories.php',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, Object?>>(_options);
    late RemoteCategoryList _value;
    try {
      _value = RemoteCategoryList.fromJson(_result.data!);
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
