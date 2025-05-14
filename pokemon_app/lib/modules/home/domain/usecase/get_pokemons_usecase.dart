import 'package:injectable/injectable.dart';
import 'package:pokemon_app/modules/home/data/api/get_pokemons_api.dart';
import 'package:pokemon_app/modules/home/domain/entity/pokemons_list_entity.dart';
import 'package:pokemon_app/modules/home/domain/repository/pokemons_domain_repository.dart';

@injectable
class GetPokemonsUsecase {
  final PokemonsDomainRepository _pokemonRepository;

  GetPokemonsUsecase({required PokemonsDomainRepository pokemonRepository})
      : _pokemonRepository = pokemonRepository;

  Future<PokemonsListEntity> execute(
      {required int limit, required int offset}) {
    return _pokemonRepository.getPokemons(limit: limit, offset: offset);
  }
}
