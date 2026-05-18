import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lat_res/cubit/auih.dart';
import 'package:lat_res/ui/components/recipe_card.dart';
import 'package:lat_res/ui/recipes/cubit.dart';
import 'package:lat_res/ui/recipes/state.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecipesCubit(recipeRepository: context.read()),
      child: const _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Resep'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => context.read<AuthCubit>().onLogout(),
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
          ),
        ],
      ),
      body: BlocBuilder<RecipesCubit, RecipesState>(
        builder: (context, state) {
          return Column(
            children: [
              state.categories.fold(
                () => const SizedBox.shrink(),
                (categories) => SizedBox(
                  height: 60,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    separatorBuilder: (context, index) => const SizedBox(width: 8),
                    itemBuilder: (context, index) {
                      final category = categories[index];
                      final isSelected = state.selectedCategory.fold(
                        () => false,
                        (selected) => selected == category,
                      );
                      return FilterChip(
                        label: Text(category),
                        selected: isSelected,
                        onSelected: (selected) {
                          if (selected) {
                            context.read<RecipesCubit>().onCategoryChanged(category);
                          }
                        },
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    if (state.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    return state.error.fold(
                      () => state.recipes.fold(
                        () => const SizedBox.shrink(),
                        (recipes) {
                          if (recipes.isEmpty) {
                            return const Center(child: Text('Tidak ada resep ditemukan'));
                          }

                          return GridView.builder(
                            padding: const EdgeInsets.all(16),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              mainAxisSpacing: 12,
                              childAspectRatio: 0.8,
                            ),
                            itemCount: recipes.length,
                            itemBuilder: (context, index) {
                              final recipe = recipes[index];
                              return RecipeCard(
                                recipe: recipe,
                                onFavoriteClicked: () =>
                                    context.read<RecipesCubit>().onToggleFavorite(recipe),
                              );
                            },
                          );
                        },
                      ),
                      (errorMessage) => Center(
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.error_outline,
                                size: 48,
                                color: Colors.red,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                errorMessage,
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.red),
                              ),
                              const SizedBox(height: 24),
                              FilledButton.icon(
                                onPressed: () => context.read<RecipesCubit>().onRefresh(),
                                icon: const Icon(Icons.refresh),
                                label: const Text('Refresh'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
