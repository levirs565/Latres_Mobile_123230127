import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lat_res/domain/tvshow.dart';

import 'state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final TVShowRepository _repository;
  StreamSubscription? _favoriteSubscription;

  FavoriteCubit({required TVShowRepository repository})
    : _repository = repository,
      super(const FavoriteState(shows: [])) {
    _favoriteSubscription = _repository.getFavoriteListStream().listen((event) {
      emit(state.copyWith(shows: event));
    });
  }

  @override
  Future<void> close() {
    _favoriteSubscription?.cancel();
    return super.close();
  }

  void onToggleFavorite(TVShow show) async {
    await _repository.toggleFavorite(show);
  }
}
