import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';

@freezed
abstract class Recipe with _$Recipe {
  const factory Recipe({
    required String id,
    required String meal,
    required String mealThumb,
    required String? area,
    required String country,
    required bool isFavorite,
  }) = _Recipe;
}

@freezed
abstract class RecipeDetail with _$RecipeDetail {
  const factory RecipeDetail({
    required String id,
    required String meal,
    required String? mealAlternate,
    required String category,
    required String? area,
    required String country,
    required String instructions,
    required String mealThumb,
    required String? tags,
    required String youtube,
    required List<String> ingredients,
    required List<String> measures,
    required String? source,
    required String? imageSource,
    required String? creativeCommonsConfirmed,
    required String? dateModified,
    required bool isFavorite,
  }) = _RecipeDetail;
}

abstract interface class RecipeRepository {
  Stream<Either<String, List<Recipe>>> getRecipeByCategory(String category);

  Stream<Either<String, RecipeDetail>> getRecipeDetail(String id);

  Future<Either<String, Unit>> toggleFavorite(Recipe recipe);

  Future<Either<String, List<String>>> getCategories();

  Stream<List<Recipe>> getFavoriteListStream();
}
