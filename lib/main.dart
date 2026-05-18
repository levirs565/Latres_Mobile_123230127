import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/src/option.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:lat_res/cubit/auih.dart';
import 'package:lat_res/cubit/auth_state.dart';
import 'package:lat_res/data/local/hive_registrar.g.dart';
import 'package:lat_res/data/local/recipe.dart';
import 'package:lat_res/data/local/session.dart';
import 'package:lat_res/data/local/user.dart';
import 'package:lat_res/data/recipe.dart';
import 'package:lat_res/data/remote/meal.dart';
import 'package:lat_res/data/remote/tvmaze.dart';
import 'package:lat_res/data/session.dart';
import 'package:lat_res/data/tvshow.dart';
import 'package:lat_res/data/user.dart';
import 'package:lat_res/domain/auth_service.dart';
import 'package:lat_res/domain/recipe.dart';
import 'package:lat_res/domain/session.dart';
import 'package:lat_res/domain/tvshow.dart';
import 'package:lat_res/domain/user.dart';
import 'package:lat_res/ui/login/page.dart';
import 'package:lat_res/ui/main.dart';
import 'package:lat_res/ui/splash.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapters();
  await UserLocalDataSource.init();
  await FavoriteRecipeLocalDataSource.init();

  final sessionLocalDataSource = SessionLocalDataSource();

  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SessionRepository>(
          create: (context) =>
              SessionDataSource(localDataSource: sessionLocalDataSource),
        ),
        RepositoryProvider<UserRepository>(
          create: (context) =>
              UserDataSource(localDataSource: UserLocalDataSource()),
        ),
        RepositoryProvider(
          create: (context) => AuthService(
            userRepository: context.read(),
            sessionRepository: context.read(),
          ),
        ),
        RepositoryProvider<RecipeRepository>(
          create: (context) => RecipeDataSource(
            client: TheMealDBClient(Dio()),
            favoriteDataSource: FavoriteRecipeLocalDataSource(),
            sessionDataSource: sessionLocalDataSource,
          ),
        ),
        RepositoryProvider<TVShowRepository>(
          create: (context) =>
              TVShowDataSource(tvMazeClient: TVMazeClient(Dio())),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(
        authService: context.read(),
        sessionRepository: context.read(),
      ),
      child: const AppView(),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      title: 'Resep',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      builder: (context, child) {
        return BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            switch (state.username) {
              case Some<String>():
                _navigator.pushAndRemoveUntil(MainPage.route(), (_) => false);
              case None():
                _navigator.pushAndRemoveUntil(LoginPage.route(), (_) => false);
            }
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => SplashPage.route(),
    );
  }
}
