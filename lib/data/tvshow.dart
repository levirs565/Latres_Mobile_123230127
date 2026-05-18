import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:fpdart/src/either.dart';
import 'package:lat_res/data/remote/tvmaze.dart';
import 'package:lat_res/domain/tvshow.dart';

import 'local/session.dart';
import 'local/tvshow.dart';

class TVShowDataSource implements TVShowRepository {
  final TVMazeClient _tvMazeClient;
  final FavoriteTVShowLocalDataSource _favoriteDataSource;
  final SessionLocalDataSource _sessionDataSource;

  TVShowDataSource({
    required TVMazeClient tvMazeClient,
    required FavoriteTVShowLocalDataSource favoriteDataSource,
    required SessionLocalDataSource sessionDataSource,
  }) : _favoriteDataSource = favoriteDataSource,
       _sessionDataSource = sessionDataSource,
       _tvMazeClient = tvMazeClient;

  @override
  Stream<Either<String, List<TVShow>>> getTVShowList() async* {
    try {
      final result = await _tvMazeClient.getShows();
      final shows = result
          .map(
            (item) => TVShow(
              id: item.id,
              name: item.name,
              rating: item.rating.average ?? 0,
              mediumImage: item.image.medium,
              language: item.language,
              isFavorite: false,
            ),
          )
          .toList();
      yield* _getFavoriteIdsStream()
          .map(
            (favorites) => shows
                .map(
                  (element) => element.copyWith(
                    isFavorite: favorites.contains(element.id),
                  ),
                )
                .toList(),
          )
          .map((elements) => Either.right(elements));
    } catch (e, s) {
      // print('Exception details: $e');
      // print('Stack trace:\n$s');
      yield left(e.toString());
    }
  }

  @override
  Stream<Either<String, TVShowDetail>> getTVShowDetail(int id) async* {
    try {
      final result = await _tvMazeClient.getShowById(id);
      final show = TVShowDetail(
        id: result.id,
        name: result.name,
        rating: result.rating.average ?? 0,
        originalImage: result.image.original,
        mediumImage: result.image.medium,
        language: result.language,
        isFavorite: false,
        status: result.status,
        genres: result.genres,
        overview: result.summary,
      );
      yield* _getFavoriteIdsStream()
          .map((favorites) => show.copyWith(isFavorite: favorites.contains(id)))
          .map((result) => right(result));
    } catch (e, s) {
      // print('Exception details: $e');
      // print('Stack trace:\n$s');
      yield left(e.toString());
    }
  }

  Stream<List<int>> _getFavoriteIdsStream() async* {
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
  Stream<List<TVShow>> getFavoriteListStream() async* {
    final username = await _sessionDataSource.getUsername();
    switch (username) {
      case Some<String>():
        yield* _favoriteDataSource
            .getFavoritesStream(username.value)
            .map(
              (favorites) => favorites
                  .map(
                    (item) => TVShow(
                      id: item.id,
                      name: item.name,
                      rating: item.rating,
                      mediumImage: item.mediumImage,
                      language: item.language,
                      isFavorite: true
                    ),
                  )
                  .toList(),
            );
      case None():
    }
  }

  @override
  Future<Either<String, Unit>> toggleFavorite(TVShow show) async {
    final username = await _sessionDataSource.getUsername();
    switch (username) {
      case Some<String>():
        await _favoriteDataSource.toggleFavorite(
          username.value,
          LocalTVShow(
            id: show.id,
            name: show.name,
            rating: show.rating,
            mediumImage: show.mediumImage,
            language: show.language,
          ),
        );
        return right(unit);
      case None():
        return left("Not logged in");
    }
  }
}
