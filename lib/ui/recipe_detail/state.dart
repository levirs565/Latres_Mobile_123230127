import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lat_res/domain/recipe.dart';

part 'state.freezed.dart';

@freezed
abstract class RecipeDetailState with _$RecipeDetailState {
  const factory RecipeDetailState({
    required String id,
    required Option<RecipeDetail> recipe,
    required bool isFavoriteLoading,
    required bool isLoading,
    required Option<String> error,
  }) = _RecipeDetailState;
}
