import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokemon_app/core/config/router/router.dart';

import 'core/services/di/di_injection.dart' as get_it;

final di = GetIt.instance;

void main() {
  final appRouter = AppRouter();
  get_it.configureDependencies(di);

  runApp(PokemonApp(
    appRouter: appRouter,
  ));
}

class PokemonApp extends StatelessWidget {
  const PokemonApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: 'ClashDisplay'),
      routerConfig: appRouter.config(),
    );
  }
}
