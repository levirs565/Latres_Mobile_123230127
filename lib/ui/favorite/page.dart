import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lat_res/cubit/auih.dart';
import 'package:lat_res/ui/favorite/cubit.dart';
import 'package:lat_res/ui/favorite/state.dart';

import '../components/recipe_card.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteCubit(recipeRepository: context.read()),
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
          title: const Text('Resep Favorit'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () => context.read<AuthCubit>().onLogout(),
              icon: const Icon(Icons.logout),
              tooltip: 'Logout',
            ),
          ],
        ),
        body: BlocBuilder<FavoriteCubit, FavoriteState>(
          builder: (context, state) {
            if (state.recipes.isEmpty) {
              return const Center(child: Text('Belum ada resep favorit'));
            }

            return GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.8,
              ),
              itemCount: state.recipes.length,
              itemBuilder: (context, index) {
                final recipe = state.recipes[index];
                return RecipeCard(
                  recipe: recipe,
                  onFavoriteClicked: () =>
                      context.read<FavoriteCubit>().onToggleFavorite(recipe),
                );
              },
            );
          },
        )
    );
  }
}
