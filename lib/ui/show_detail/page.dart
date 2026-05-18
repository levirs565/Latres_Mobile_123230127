import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit.dart';
import 'state.dart';

class ShowDetailPage extends StatelessWidget {
  final int id;

  const ShowDetailPage({super.key, required this.id});

  static Route route({required int id}) =>
      MaterialPageRoute(builder: (context) => ShowDetailPage(id: id));

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowDetailCubit(repository: context.read(), id: id),
      child: const _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ShowDetailCubit, ShowDetailState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return state.error.fold(
            () => state.show.fold(
              () => const Center(child: Text('Data tidak ditemukan')),
              (show) => CustomScrollView(
                slivers: [
                  SliverAppBar.large(
                    title: Text(show.name),
                    expandedHeight: 300,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.network(
                        show.originalImage,
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
                                label: Text(show.language),
                                avatar: const Icon(
                                  Icons.category_outlined,
                                  size: 18,
                                ),
                              ),
                              Chip(
                                label: Text(show.status),
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
                          const SizedBox(height: 24),
                          Text(
                            'Cara Memasak',
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            show.overview,
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
                          context.read<ShowDetailCubit>().onRefresh(),
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
      floatingActionButton: BlocBuilder<ShowDetailCubit, ShowDetailState>(
        buildWhen: (previous, current) =>
            previous.show.map((r) => r.isFavorite) !=
                current.show.map((r) => r.isFavorite) ||
            previous.isFavoriteLoading != current.isFavoriteLoading ||
            previous.show.isSome() != current.show.isSome(),
        builder: (context, state) {
          final isFavorite =
              state.show.map((r) => r.isFavorite).toNullable() ?? false;
          return state.show.fold(
            () => const SizedBox.shrink(),
            (recipe) => FloatingActionButton(
              onPressed: () =>
                  context.read<ShowDetailCubit>().onToggleFavorite(),
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
