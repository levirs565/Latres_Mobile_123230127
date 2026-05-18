import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lat_res/cubit/auih.dart';
import 'package:lat_res/ui/components/show_card.dart';
import 'package:lat_res/ui/favorite/cubit.dart';
import 'package:lat_res/ui/favorite/state.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteCubit(repository: context.read()),
      child: _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TV Show Favorit'),
          centerTitle: true,
        ),
        body: BlocBuilder<FavoriteCubit, FavoriteState>(
          builder: (context, state) {
            if (state.shows.isEmpty) {
              return const Center(child: Text('Belum ada TV show favorit'));
            }

            return GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.7,
              ),
              itemCount: state.shows.length,
              itemBuilder: (context, index) {
                final show = state.shows[index];
                return TVShowCard(
                  show: show,
                  onFavoriteClicked: () =>
                      context.read<FavoriteCubit>().onToggleFavorite(show),
                );
              },
            );
          },
        )
    );
  }
}
