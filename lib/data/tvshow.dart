import 'dart:developer';

import 'package:fpdart/src/either.dart';
import 'package:lat_res/data/remote/tvmaze.dart';
import 'package:lat_res/domain/tvshow.dart';

class TVShowDataSource implements TVShowRepository {
  final TVMazeClient _tvMazeClient;

  TVShowDataSource({required TVMazeClient tvMazeClient})
    : _tvMazeClient = tvMazeClient;

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
      yield right(shows);
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
        overview: result.summary
      );
      yield right(show);
    } catch (e, s) {
      // print('Exception details: $e');
      // print('Stack trace:\n$s');
      yield left(e.toString());
    }
  }
}
