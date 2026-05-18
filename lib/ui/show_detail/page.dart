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
                  SliverAppBar(
                    expandedHeight: 500,
                    pinned: true,
                    iconTheme: const IconThemeData(color: Colors.white),
                    flexibleSpace: FlexibleSpaceBar(
                      background: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            show.originalImage,
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                            errorBuilder: (context, error, stackTrace) =>
                                Image.network(
                              show.mediumImage,
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          const DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.black,
                                ],
                                stops: [0.7, 1.0],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            show.name,
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.amber, size: 24),
                              const SizedBox(width: 4),
                              Text(
                                show.rating.toStringAsFixed(1),
                                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(width: 16),
                              Text(
                                show.language,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  show.status,
                                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                        color: Colors.blue[800],
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: show.genres
                                .map((genre) => Chip(
                                      label: Text(genre),
                                      visualDensity: VisualDensity.compact,
                                      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                                      side: BorderSide.none,
                                    ))
                                .toList(),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'Overview',
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            show.overview.replaceAll(
                                RegExp(r'<[^>]*>|&lt;[^&gt;]*&gt;|&amp;[^;]+;'),
                                ''),
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  height: 1.5,
                                ),
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
            (show) => FloatingActionButton(
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
