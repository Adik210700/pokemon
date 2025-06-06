import 'package:auto_route/auto_route.dart';
import 'package:pokemon_app/core/config/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: WelcomeRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: PokemonDetailsRoute.page),
      ];
}
