// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:pokemon_app/modules/home/presentation/home_screen.dart' as _i1;
import 'package:pokemon_app/modules/home/presentation/welcome/presentation/welcome_screen.dart'
    as _i3;
import 'package:pokemon_app/modules/pokemon_details/presentation/pokemon_details_screen.dart'
    as _i2;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.PokemonDetailsScreen]
class PokemonDetailsRoute extends _i4.PageRouteInfo<PokemonDetailsRouteArgs> {
  PokemonDetailsRoute({
    _i5.Key? key,
    required int id,
    required int maxCount,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         PokemonDetailsRoute.name,
         args: PokemonDetailsRouteArgs(key: key, id: id, maxCount: maxCount),
         initialChildren: children,
       );

  static const String name = 'PokemonDetailsRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PokemonDetailsRouteArgs>();
      return _i2.PokemonDetailsScreen(
        key: args.key,
        id: args.id,
        maxCount: args.maxCount,
      );
    },
  );
}

class PokemonDetailsRouteArgs {
  const PokemonDetailsRouteArgs({
    this.key,
    required this.id,
    required this.maxCount,
  });

  final _i5.Key? key;

  final int id;

  final int maxCount;

  @override
  String toString() {
    return 'PokemonDetailsRouteArgs{key: $key, id: $id, maxCount: $maxCount}';
  }
}

/// generated route for
/// [_i3.WelcomeScreen]
class WelcomeRoute extends _i4.PageRouteInfo<void> {
  const WelcomeRoute({List<_i4.PageRouteInfo>? children})
    : super(WelcomeRoute.name, initialChildren: children);

  static const String name = 'WelcomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.WelcomeScreen();
    },
  );
}
