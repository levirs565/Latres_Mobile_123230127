import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lat_res/ui/recipe_detail/cubit.dart';
import 'package:lat_res/ui/recipe_detail/state.dart';

class RecipeDetailPage extends StatelessWidget {
  final String id;

  const RecipeDetailPage({super.key, required this.id});

  static Route route({required String id}) =>
      MaterialPageRoute(builder: (context) => RecipeDetailPage(id: id));

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RecipeDetailCubit(recipeRepository: context.read(), id: id),
      child: const _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RecipeDetailCubit, RecipeDetailState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return state.error.fold(
            () => state.recipe.fold(
              () => const Center(child: Text('Data tidak ditemukan')),
              (recipe) => CustomScrollView(
                slivers: [
                  SliverAppBar.large(
                    title: Text(recipe.meal),
                    expandedHeight: 300,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.network(
                        recipe.mealThumb,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            spacing: 8,
                            children: [
                              Chip(
                                label: Text(recipe.category),
                                avatar: const Icon(
                                  Icons.category_outlined,
                                  size: 18,
                                ),
                              ),
                              Chip(
                                label: Text(recipe.country),
                                avatar: const Icon(
                                  Icons.location_on_outlined,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'BaHan-bahan',
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: recipe.ingredients.length,
                            itemBuilder: (context, index) {
                              final ingredient = recipe.ingredients[index];
                              final measure = recipe.measures.length > index
                                  ? recipe.measures[index]
                                  : '';
                              if (ingredient.trim().isEmpty)
                                return const SizedBox.shrink();
                              return ListTile(
                                leading: const Icon(
                                  Icons.check_circle_outline,
                                  size: 20,
                                ),
                                title: Text(ingredient),
                                subtitle: Text(measure),
                                contentPadding: EdgeInsets.zero,
                                visualDensity: VisualDensity.compact,
                              );
                            },
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'Cara Memasak',
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            recipe.instructions,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium?.copyWith(height: 1.5),
                          ),
                          const SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
                      onPressed: () =>
                          context.read<RecipeDetailCubit>().onRefresh(),
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
      floatingActionButton: BlocBuilder<RecipeDetailCubit, RecipeDetailState>(
        buildWhen: (previous, current) =>
            previous.recipe.map((r) => r.isFavorite) !=
                current.recipe.map((r) => r.isFavorite) ||
            previous.isFavoriteLoading != current.isFavoriteLoading ||
            previous.recipe.isSome() != current.recipe.isSome(),
        builder: (context, state) {
          final isFavorite =
              state.recipe.map((r) => r.isFavorite).toNullable() ?? false;
          return state.recipe.fold(
            () => const SizedBox.shrink(),
            (recipe) => FloatingActionButton(
              onPressed: () =>
                  context.read<RecipeDetailCubit>().onToggleFavorite(),
              child: state.isFavoriteLoading
                  ? const SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : null,
                    ),
            ),
          );
        },
      ),
    );
  }
}
