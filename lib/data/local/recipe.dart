import 'package:hive_ce/hive.dart';

class LocalRecipe {
  final String id;
  final String meal;
  final String mealThumb;
  final String? area;
  final String country;

  LocalRecipe({
    required this.id,
    required this.meal,
    required this.mealThumb,
    required this.area,
    required this.country,
  });
}

const _boxName = "favorites";

class FavoriteRecipeLocalDataSource {
  final Box _box = Hive.box(_boxName);

  static Future<void> init() async {
    await Hive.openBox(_boxName);
  }

  Future<List<LocalRecipe>> getFavorites(String username) async {
    return _box.get(username)?.cast<LocalRecipe>() ?? List.empty();
  }

  Stream<List<LocalRecipe>> getFavoritesStream(String username) async* {
    yield await getFavorites(username);
    yield* _box
        .watch(key: username)
        .map((event) => event.value ?? List.empty());
  }

  Future<void> toggleFavorite(String username, LocalRecipe recipe) async {
    final favorites = (await getFavorites(username)).toList(growable: true);
    if (favorites.any((element) => element.id == recipe.id)) {
      favorites.removeWhere((element) => element.id == recipe.id);
    } else {
      favorites.add(recipe);
    }
    await _box.put(username, favorites);
  }
}
