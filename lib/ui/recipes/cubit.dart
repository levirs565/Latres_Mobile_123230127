import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:rxdart/rxdart.dart';
import 'package:lat_res/domain/recipe.dart';
import 'package:lat_res/ui/recipes/state.dart';

class RecipesCubit extends Cubit<RecipesState> {
  final BehaviorSubject<Unit> _categoriesController = BehaviorSubject.seeded(
    unit,
  );
  final BehaviorSubject<Unit> _refreshController = BehaviorSubject.seeded(unit);
  final RecipeRepository _recipeRepository;
  StreamSubscription? _subscription;

  RecipesCubit({required RecipeRepository recipeRepository})
    : _recipeRepository = recipeRepository,
      super(
        const RecipesState(
          recipes: Option.none(),
          categories: Option.none(),
          selectedCategory: Option.none(),
          error: Option.none(),
        ),
      ) {
    _subscription = _categoriesController.stream
        .switchMap((_) async* {
          yield state.copyWith(categories: none(), error: none());
          final categories = await _recipeRepository.getCategories();
          switch (categories) {
            case Left<String, List<String>>():
              yield state.copyWith(error: some(categories.value));
            case Right<String, List<String>>():
              final firstCategory = categories.value.firstOrNull;
              yield state.copyWith(
                categories: some(categories.value),
                selectedCategory: Option.fromNullable(firstCategory),
              );
              yield* _refreshController.stream.switchMap((_) async* {
                final currentCategory = state.selectedCategory.getOrElse(
                  () => "Seafood",
                );
                yield state.copyWith(recipes: none(), error: none());
                yield* _recipeRepository
                    .getRecipeByCategory(currentCategory)
                    .map((result) {
                      return result.fold(
                        (l) => state.copyWith(error: some(l)),
                        (r) => state.copyWith(recipes: some(r)),
                      );
                    });
              });
          }
        })
        .listen(emit);
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    _categoriesController.close();
    _refreshController.close();
    return super.close();
  }

  void onCategoryChanged(String category) {
    emit(state.copyWith(selectedCategory: some(category)));
    _refreshController.add(unit);
  }

  void onRefresh() async {
    final snapshot = state;
    if (snapshot.error.isNone()) return;
    if (snapshot.categories.isNone()) {
      _categoriesController.add(unit);
    } else if (snapshot.recipes.isNone()) {
      _refreshController.add(unit);
    }
  }

  void onToggleFavorite(Recipe recipe) async {
    await _recipeRepository.toggleFavorite(recipe);
  }
}
