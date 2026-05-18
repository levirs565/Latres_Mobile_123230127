import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'meal.freezed.dart';

part 'meal.g.dart';

@RestApi(baseUrl: "https://www.themealdb.com/api/json/v1/1")
abstract class TheMealDBClient {
  factory TheMealDBClient(Dio dio, {String baseUrl}) = _TheMealDBClient;

  @GET("/filter.php")
  Future<RemoteMealList> getMealsByCategory(@Query("c") String category);

  @GET("/lookup.php")
  Future<RemoteMealDetailList> getMealDetail(@Query("i") String id);

  @GET("/categories.php")
  Future<RemoteCategoryList> getCategories();
}

@freezed
abstract class RemoteMeal with _$RemoteMeal {
  const factory RemoteMeal({
    @JsonKey(name: "idMeal") required String id,
    @JsonKey(name: "strMeal") required String meal,
    @JsonKey(name: "strMealThumb") required String mealThumb,
    @JsonKey(name: "strArea") required String? area,
    @JsonKey(name: "strCountry") required String country,
  }) = _RemoteMeal;

  factory RemoteMeal.fromJson(Map<String, Object?> json) =>
      _$RemoteMealFromJson(json);
}

@freezed
abstract class RemoteMealList with _$RemoteMealList {
  const factory RemoteMealList({
    @JsonKey(name: "meals") required List<RemoteMeal> meals,
  }) = _RemoteMealList;

  factory RemoteMealList.fromJson(Map<String, Object?> json) =>
      _$RemoteMealListFromJson(json);
}

@freezed
abstract class RemoteMealDetail with _$RemoteMealDetail {
  const factory RemoteMealDetail({
    @JsonKey(name: "idMeal") required String id,
    @JsonKey(name: "strMeal") required String meal,
    @JsonKey(name: "strMealAlternate") required String? mealAlternate,
    @JsonKey(name: "strCategory") required String category,
    @JsonKey(name: "strArea") required String? area,
    @JsonKey(name: "strCountry") required String country,
    @JsonKey(name: "strInstructions") required String instructions,
    @JsonKey(name: "strMealThumb") required String mealThumb,
    @JsonKey(name: "strTags") required String? tags,
    @JsonKey(name: "strYoutube") required String youtube,
    @JsonKey(fromJson: _ingredientsFromJson) required List<String> ingredients,
    @JsonKey(fromJson: _measureFromJson) required List<String> measures,
    @JsonKey(name: "strSource") required String? source,
    @JsonKey(name: "strImageSource") required String? imageSource,
    @JsonKey(name: "strCreativeCommonsConfirmed")
    required String? creativeCommonsConfirmed,
    @JsonKey(name: "dateModified") required String? dateModified,
  }) = _RemoteMealDetail;

  factory RemoteMealDetail.fromJson(Map<String, Object?> json) =>
      _$RemoteMealDetailFromJson({
        ...json,
        "ingredients": json,
        "measures": json,
      });
}

@freezed
abstract class RemoteMealDetailList with _$RemoteMealDetailList {
  const factory RemoteMealDetailList({
    @JsonKey(name: "meals") required List<RemoteMealDetail> meals,
  }) = _RemoteMealDetailList;

  factory RemoteMealDetailList.fromJson(Map<String, Object?> json) =>
      _$RemoteMealDetailListFromJson(json);
}

List<String> _ingredientsFromJson(Map<String, dynamic> json) {
  return _fromMultiFieldString("strIngredient", json);
}

List<String> _measureFromJson(Map<String, dynamic> json) {
  return _fromMultiFieldString("strMeasure", json);
}

List<String> _fromMultiFieldString(String name, Map<String, dynamic> json) {
  final result = <String>[];

  for (int i = 1; i <= 20; i++) {
    final value = json['$name$i'];

    if (value != null && value.toString().trim().isNotEmpty) {
      result.add(value);
    }
  }

  return result;
}

@freezed
abstract class RemoteCategory with _$RemoteCategory {
  const factory RemoteCategory({
    @JsonKey(name: "idCategory") required String id,
    @JsonKey(name: "strCategory") required String name,
    @JsonKey(name: "strCategoryThumb") required String thumb,
    @JsonKey(name: "strCategoryDescription") required String description,
  }) = _RemoteCategory;

  factory RemoteCategory.fromJson(Map<String, Object?> json) =>
      _$RemoteCategoryFromJson(json);
}

@freezed
abstract class RemoteCategoryList with _$RemoteCategoryList {
  const factory RemoteCategoryList({
    @JsonKey(name: "categories") required List<RemoteCategory> categories,
  }) = _RemoteCategoryList;

  factory RemoteCategoryList.fromJson(Map<String, Object?> json) =>
      _$RemoteCategoryListFromJson(json);
}
