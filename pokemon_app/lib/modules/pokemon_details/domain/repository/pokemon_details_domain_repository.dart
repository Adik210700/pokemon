import 'package:pokemon_app/modules/pokemon_details/domain/entity/pokemon_entity.dart';

abstract class PokemonDetailsDomainRepository {
  Future<PokemonEntity>getPokemonDetails(int id);
}