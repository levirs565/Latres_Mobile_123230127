import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:lat_res/domain/recipe.dart';
import 'package:lat_res/ui/recipe_detail/state.dart';

class RecipeDetailCubit extends Cubit<RecipeDetailState> {
  final StreamController<Unit> _refreshController = StreamController();
  final RecipeRepository _recipeRepository;
  StreamSubscription? _subscription;

  RecipeDetailCubit({
    required RecipeRepository recipeRepository,
    required String id,
  }) : _recipeRepository = recipeRepository,
       super(
         RecipeDetailState(
           id: id,
           recipe: Option.none(),
           isLoading: false,
           error: Option.none(),
           isFavoriteLoading: true,
         ),
       ) {
    _subscription = _refreshController.stream
        .asyncExpand((_) async* {
          yield state.copyWith(isLoading: true, error: none());
          yield* _recipeRepository.getRecipeDetail(state.id).map((result) {
            return result.fold(
              (l) => state.copyWith(error: some(l), isLoading: false),
              (r) => state.copyWith(
                recipe: some(r),
                isLoading: false,
                isFavoriteLoading: false,
              ),
            );
          });
        })
        .listen(emit);
    onRefresh();
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    _refreshController.close();
    return super.close();
  }

  void onRefresh() async {
    if (state.isLoading) return;
    _refreshController.add(unit);
  }

  void onToggleFavorite() async {
    final snapshotState = state;
    if (snapshotState.isFavoriteLoading || snapshotState.recipe.isNone()) {
      return;
    }

    emit(snapshotState.copyWith(isFavoriteLoading: true));
    final recipe = snapshotState.recipe.toNullable()!;
    await _recipeRepository.toggleFavorite(
      Recipe(
        id: recipe.id,
        meal: recipe.meal,
        mealThumb: recipe.mealThumb,
        area: recipe.area,
        country: recipe.country,
        isFavorite: !recipe.isFavorite,
      ),
    );
  }
}
