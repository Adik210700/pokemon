// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../../modules/home/data/mapper/pokemon_list_model_mapper.dart'
    as _i770;
import '../../../modules/home/data/repository/pokemons_repository.dart' as _i88;
import '../../../modules/home/domain/repository/pokemons_domain_repository.dart'
    as _i22;
import '../../../modules/home/domain/usecase/get_pokemons_usecase.dart'
    as _i678;
import '../../../modules/home/presentation/bloc/get_pokemons_bloc.dart'
    as _i346;
import '../dio_settings.dart' as _i837;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i770.PokemonListModelMapper>(
        () => _i770.PokemonListModelMapper());
    gh.lazySingleton<_i837.DioSettings>(() => _i837.DioSettings());
    gh.lazySingleton<_i22.PokemonsDomainRepository>(() =>
        _i88.PokemonsRepository(mapper: gh<_i770.PokemonListModelMapper>()));
    gh.factory<_i678.GetPokemonsUsecase>(() => _i678.GetPokemonsUsecase(
        pokemonRepository: gh<_i22.PokemonsDomainRepository>()));
    gh.factory<_i346.GetPokemonsBloc>(() => _i346.GetPokemonsBloc(
        getPokemonsUsecase: gh<_i678.GetPokemonsUsecase>()));
    return this;
  }
}
