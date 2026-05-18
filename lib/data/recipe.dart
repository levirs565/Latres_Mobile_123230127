import 'package:fpdart/src/either.dart';
import 'package:fpdart/src/option.dart';
import 'package:fpdart/src/unit.dart';
import 'package:lat_res/data/local/recipe.dart';
import 'package:lat_res/data/local/session.dart';
import 'package:lat_res/data/remote/meal.dart';
import 'package:lat_res/domain/recipe.dart';

class RecipeDataSource implements RecipeRepository {
  final TheMealDBClient _client;
  final FavoriteRecipeLocalDataSource _favoriteDataSource;
  final SessionLocalDataSource _sessionDataSource;

  RecipeDataSource({
    required TheMealDBClient client,
    required FavoriteRecipeLocalDataSource favoriteDataSource,
    required SessionLocalDataSource sessionDataSource,
  }) : _sessionDataSource = sessionDataSource,
       _favoriteDataSource = favoriteDataSource,
       _client = client;

  @override
  Stream<Either<String, List<Recipe>>> getRecipeByCategory(
    String category,
  ) async* {
    try {
      final result = await _client.getMealsByCategory(category);
      final recipes = result.meals
          .map(
            (element) => Recipe(
              id: element.id,
              meal: element.meal,
              mealThumb: element.mealThumb,
              area: element.area,
              country: element.country,
              isFavorite: false,
            ),
          )
          .toList();
      yield* _getFavoriteIdsStream()
          .map(
            (favorites) => recipes
                .map(
                  (element) => element.copyWith(
                    isFavorite: favorites.contains(element.id),
                  ),
                )
                .toList(),
          )
          .map((elements) => Either.right(elements));
    } catch (e) {
      yield left(e.toString());
    }
  }

  @override
  Stream<Either<String, RecipeDetail>> getRecipeDetail(String id) async* {
    try {
      final result = await _client.getMealDetail(id);
      if (result.meals.isEmpty) {
        yield left("Not found");
      }
      final first = result.meals.first;
      final detail = RecipeDetail(
        id: first.id,
        meal: first.meal,
        mealAlternate: first.mealAlternate,
        category: first.category,
        area: first.area,
        country: first.country,
        instructions: first.instructions,
        mealThumb: first.mealThumb,
        tags: first.tags,
        youtube: first.youtube,
        ingredients: first.ingredients,
        measures: first.measures,
        source: first.source,
        imageSource: first.imageSource,
        creativeCommonsConfirmed: first.creativeCommonsConfirmed,
        dateModified: first.dateModified,
        isFavorite: false,
      );
      yield* _getFavoriteIdsStream()
          .map(
            (favorites) => detail.copyWith(isFavorite: favorites.contains(id)),
          )
          .map((result) => right(result));
    } catch (e) {
      yield left(e.toString());
    }
  }

  @override
  Future<Either<String, List<String>>> getCategories() async {
    try {
      final result = await _client.getCategories();
      return right(result.categories.map((element) => element.name).toList());
    } catch (e) {
      return left(e.toString());
    }
  }

  Stream<List<String>> _getFavoriteIdsStream() async* {
    final username = await _sessionDataSource.getUsername();
    switch (username) {
      case Some<String>():
        yield* _favoriteDataSource
            .getFavoritesStream(username.value)
            .map((favorites) => favorites.map((item) => item.id).toList());
      case None():
    }
  }

  @override
  Stream<List<Recipe>> getFavoriteListStream() async* {
    final username = await _sessionDataSource.getUsername();
    switch (username) {
      case Some<String>():
        yield* _favoriteDataSource
            .getFavoritesStream(username.value)
            .map(
              (favorites) => favorites
                  .map(
                    (item) => Recipe(
                      id: item.id,
                      meal: item.meal,
                      mealThumb: item.mealThumb,
                      area: item.area,
                      country: item.country,
                      isFavorite: true,
                    ),
                  )
                  .toList(),
            );
      case None():
    }
  }

  @override
  Future<Either<String, Unit>> toggleFavorite(Recipe recipe) async {
    final username = await _sessionDataSource.getUsername();
    switch (username) {
      case Some<String>():
        await _favoriteDataSource.toggleFavorite(
          username.value,
          LocalRecipe(
            id: recipe.id,
            meal: recipe.meal,
            mealThumb: recipe.mealThumb,
            area: recipe.area,
            country: recipe.country,
          ),
        );
        return right(unit);
      case None():
        return left("Not logged in");
    }
  }
}
