import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lat_res/domain/recipe.dart';

import 'state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final RecipeRepository _recipeRepository;
  StreamSubscription? _favoriteSubscription;

  FavoriteCubit({required RecipeRepository recipeRepository})
    : _recipeRepository = recipeRepository,
      super(const FavoriteState(recipes: [])) {
    _favoriteSubscription = _recipeRepository.getFavoriteListStream().listen((
      event,
    ) {
      emit(state.copyWith(recipes: event));
    });
  }

  @override
  Future<void> close() {
    _favoriteSubscription?.cancel();
    return super.close();
  }

  void onToggleFavorite(Recipe recipe) async {
    await _recipeRepository.toggleFavorite(recipe);
  }
}
