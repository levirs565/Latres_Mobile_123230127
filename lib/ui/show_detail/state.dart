import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lat_res/domain/tvshow.dart';

part 'state.freezed.dart';

@freezed
abstract class ShowDetailState with _$ShowDetailState {
  const factory ShowDetailState({
    required int id,
    required Option<TVShowDetail> show,
    required bool isFavoriteLoading,
    required bool isLoading,
    required Option<String> error,
  }) = _ShowDetailState;
}
