import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lat_res/domain/tvshow.dart';

part 'state.freezed.dart';

@freezed
abstract class FavoriteState with _$FavoriteState {
  const factory FavoriteState({
    required List<TVShow> shows,
  }) = _FavoriteState;
}
