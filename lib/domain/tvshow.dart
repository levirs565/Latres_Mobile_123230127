import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tvshow.freezed.dart';

@freezed
abstract class TVShow with _$TVShow {
  const factory TVShow({
    required int id,
    required String name,
    required double rating,
    required String mediumImage,
    required String language,
    required bool isFavorite,
  }) = _TVShow;
}

@freezed
abstract class TVShowDetail with _$TVShowDetail {
  const factory TVShowDetail({
    required int id,
    required String name,
    required double rating,
    required String originalImage,
    required String mediumImage,
    required String language,
    required bool isFavorite,
    required String status,
    required List<String> genres,
    required String overview,
  }) = _TVShowDetail;
}

abstract interface class TVShowRepository {
  Stream<Either<String, List<TVShow>>> getTVShowList();

  Stream<Either<String, TVShowDetail>> getTVShowDetail(int id);

  Stream<List<TVShow>> getFavoriteListStream();

  Future<Either<String, Unit>> toggleFavorite(TVShow show);
}
