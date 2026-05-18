import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lat_res/domain/tvshow.dart';

part 'state.freezed.dart';

@freezed
abstract class ShowsState with _$ShowsState {
  const ShowsState._();

  const factory ShowsState({
    required Option<List<Option<String>>> language,
    required Option<String> selectedLanguage,
    required Option<List<TVShow>> shows,
    required Option<String> error,
  }) = _ShowsState;

  bool get isCategoriesLoading => language.isNone() && error.isNone();

  bool get isRecipesLoading => shows.isNone() && error.isNone();

  bool get isLoading => isCategoriesLoading || isRecipesLoading;
}
