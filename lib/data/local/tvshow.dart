import 'package:hive_ce/hive.dart';

class LocalTVShow {
  final int id;
  final String name;
  final double rating;
  final String mediumImage;
  final String language;

  LocalTVShow({
    required this.id,
    required this.name,
    required this.rating,
    required this.mediumImage,
    required this.language,
  });
}

const _boxName = "favorites";

class FavoriteTVShowLocalDataSource {
  final Box _box = Hive.box(_boxName);

  static Future<void> init() async {
    await Hive.openBox(_boxName);
  }

  Future<List<LocalTVShow>> getFavorites(String username) async {
    return _box.get(username)?.cast<LocalTVShow>() ?? List.empty();
  }

  Stream<List<LocalTVShow>> getFavoritesStream(String username) async* {
    yield await getFavorites(username);
    yield* _box
        .watch(key: username)
        .map((event) => event.value ?? List.empty());
  }

  Future<void> toggleFavorite(String username, LocalTVShow show) async {
    final favorites = (await getFavorites(username)).toList(growable: true);
    if (favorites.any((element) => element.id == show.id)) {
      favorites.removeWhere((element) => element.id == show.id);
    } else {
      favorites.add(show);
    }
    await _box.put(username, favorites);
  }
}
