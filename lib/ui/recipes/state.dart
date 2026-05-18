import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lat_res/domain/recipe.dart';

part 'state.freezed.dart';

@freezed
abstract class RecipesState with _$RecipesState {
  const RecipesState._();

  const factory RecipesState({
    required Option<List<String>> categories,
    required Option<String> selectedCategory,
    required Option<List<Recipe>> recipes,
    required Option<String> error,
  }) = _RecipesState;

  bool get isCategoriesLoading => categories.isNone() && error.isNone();

  bool get isRecipesLoading => recipes.isNone() && error.isNone();

  bool get isLoading => isCategoriesLoading || isRecipesLoading;
}
