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

abstract interface class TVShowRepository {
  Stream<Either<String, List<TVShow>>> getTVShowList();
}