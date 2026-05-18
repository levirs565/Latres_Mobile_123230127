import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:lat_res/cubit/auih.dart';
import 'package:lat_res/ui/components/show_card.dart';

import 'cubit.dart';
import 'state.dart';

class ShowsPage extends StatelessWidget {
  const ShowsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowsCubit(repository: context.read()),
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
      body: BlocBuilder<ShowsCubit, ShowsState>(
        builder: (context, state) {
          return Column(
            children: [
              state.language.fold(
                () => const SizedBox.shrink(),
                (categories) => SizedBox(
                  height: 60,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 8),
                    itemBuilder: (context, index) {
                      final language = categories[index];
                      final isSelected = state.selectedLanguage == language;;
                      return FilterChip(
                        label: Text(language.getOrElse(() => "All")),
                        selected: isSelected,
                        onSelected: (selected) {
                          if (selected) {
                            context.read<ShowsCubit>().onLanguage(language);
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
                      () => state.shows.fold(() => const SizedBox.shrink(), (
                        shows,
                      ) {
                        if (shows.isEmpty) {
                          return const Center(
                            child: Text('Tidak ada pertunjukan ditemukan!'),
                          );
                        }

                        return GridView.builder(
                          padding: const EdgeInsets.all(16),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 12,
                                mainAxisSpacing: 12,
                                childAspectRatio: 0.8,
                              ),
                          itemCount: shows.length,
                          itemBuilder: (context, index) {
                            final show = shows[index];
                            return TVShowCard(
                              show: show,
                              onFavoriteClicked: () => context
                                  .read<ShowsCubit>()
                                  .onToggleFavorite(show),
                            );
                          },
                        );
                      }),
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
                                    context.read<ShowsCubit>().onRefresh(),
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
