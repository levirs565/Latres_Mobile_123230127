import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:lat_res/domain/tvshow.dart';

import 'state.dart';

class ShowDetailCubit extends Cubit<ShowDetailState> {
  final StreamController<Unit> _refreshController = StreamController();
  final TVShowRepository _repository;
  StreamSubscription? _subscription;

  ShowDetailCubit({required int id, required TVShowRepository repository})
    : _repository = repository,
      super(
        ShowDetailState(
          id: id,
          show: Option.none(),
          isLoading: false,
          error: Option.none(),
          isFavoriteLoading: true,
        ),
      ) {
    _subscription = _refreshController.stream
        .asyncExpand((_) async* {
          yield state.copyWith(isLoading: true, error: none());
          yield* _repository.getTVShowDetail(state.id).map((result) {
            return result.fold(
              (l) => state.copyWith(error: some(l), isLoading: false),
              (r) => state.copyWith(
                show: some(r),
                isLoading: false,
                isFavoriteLoading: false,
              ),
            );
          });
        })
        .listen(emit);
    onRefresh();
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    _refreshController.close();
    return super.close();
  }

  void onRefresh() async {
    if (state.isLoading) return;
    _refreshController.add(unit);
  }

  void onToggleFavorite() async {
    final snapshotState = state;
    if (snapshotState.isFavoriteLoading || snapshotState.show.isNone()) {
      return;
    }

    emit(snapshotState.copyWith(isFavoriteLoading: true));
    final show = snapshotState.show.toNullable()!;
    // await _recipeRepository.toggleFavorite(
    //   Recipe(
    //     id: recipe.id,
    //     meal: recipe.meal,
    //     mealThumb: recipe.mealThumb,
    //     area: recipe.area,
    //     country: recipe.country,
    //     isFavorite: !recipe.isFavorite,
    //   ),
    // );
  }
}
