import 'dart:async';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:lat_res/domain/tvshow.dart';
import 'package:rxdart/rxdart.dart';
import 'package:lat_res/domain/recipe.dart';
import 'state.dart';

class ShowsCubit extends Cubit<ShowsState> {
  final BehaviorSubject<Option<String>> _languageController =
      BehaviorSubject.seeded(none());
  final BehaviorSubject<Unit> _refreshController = BehaviorSubject.seeded(unit);
  final TVShowRepository _repository;
  StreamSubscription? _subscription;

  ShowsCubit({required TVShowRepository repository})
    : _repository = repository,
      super(
        const ShowsState(
          shows: Option.none(),
          language: Option.none(),
          selectedLanguage: Option.none(),
          error: Option.none(),
        ),
      ) {
    final listStream = _refreshController.stream.switchMap((_) async* {
      yield null;
      yield* _repository.getTVShowList();
    });
    _subscription = Rx.combineLatest2(listStream, _languageController, (
      list,
      language,
    ) {
      var baseState = ShowsState(
        language: none(),
        selectedLanguage: language,
        shows: none(),
        error: list?.getLeft() ?? none(),
      );
      if (list == null || list.isLeft()) {
        return baseState;
      }

      final right = list.getRight().toNullable()!;
      final languages = groupBy(right, (element) => element.language)
          .map((key, value) => MapEntry(key, value.length))
          .entries
          .sortedBy((entry) => entry.value)
          .map((entry) => some(entry.key))
          .prepend(none())
          .toList();

      final languageNullable = language.toNullable();
      return baseState.copyWith(
        language: some(languages),
        shows: some(
          right
              .filter(
                (show) => languageNullable == null
                    ? true
                    : show.language == languageNullable,
              )
              .toList(),
        ),
      );
    }).listen(emit);
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    _languageController.close();
    _refreshController.close();
    return super.close();
  }

  void onLanguage(Option<String> category) {
    _languageController.add(category);
  }

  void onRefresh() async {
    final snapshot = state;
    if (snapshot.error.isNone()) return;
    _refreshController.add(unit);
  }

  void onToggleFavorite(TVShow show) async {
    // await _recipeRepository.toggleFavorite(recipe);
  }
}
