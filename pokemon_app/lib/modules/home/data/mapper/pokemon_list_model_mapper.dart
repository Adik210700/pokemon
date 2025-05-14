import 'package:injectable/injectable.dart';
import 'package:pokemon_app/modules/home/data/api/get_pokemons_api.dart';
import 'package:pokemon_app/modules/home/domain/entity/pokemons_list_entity.dart';

@injectable
class PokemonListModelMapper {
  PokemonsListEntity fromMap(PokemonsListModel response) {
    return PokemonsListEntity(
      count: response.count ?? 0,
      next: response.next ?? '',
      previous: response.previous ?? '',
      results: response.results?.map((e) => fromMapElelement(e)).toList() ?? [],
    );
  }

  PokemonsListElementEntity fromMapElelement(
      PokemonsListElementModel response) {
    return PokemonsListElementEntity(
        name: response.name ?? '', url: response.url ?? '');
  }
}
