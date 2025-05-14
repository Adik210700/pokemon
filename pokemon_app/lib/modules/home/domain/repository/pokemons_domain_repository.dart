import 'package:pokemon_app/modules/home/domain/entity/pokemons_list_entity.dart';

abstract class PokemonsDomainRepository {
  Future<PokemonsListEntity> getPokemons({required int limit, required int offset});
}
