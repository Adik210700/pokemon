import 'package:injectable/injectable.dart';
import 'package:pokemon_app/core/services/dio_settings.dart';
import 'package:pokemon_app/modules/home/data/api/get_pokemons_api.dart';
import 'package:pokemon_app/modules/home/data/mapper/pokemon_list_model_mapper.dart';
import 'package:pokemon_app/modules/home/domain/entity/pokemons_list_entity.dart';
import 'package:pokemon_app/modules/home/domain/repository/pokemons_domain_repository.dart';

@LazySingleton(as: PokemonsDomainRepository)
class PokemonsRepository extends PokemonsDomainRepository {
 
  final PokemonListModelMapper _mapper;

  PokemonsRepository({
   
    required PokemonListModelMapper mapper,
  })  : 
        _mapper = mapper;
        
          @override
          Future<PokemonsListEntity> getPokemons({required int limit, required int offset}) async {
            final data = await GetPokemonsApi(DioSettings().dio).getPokemons(limit,offset);
            return _mapper.fromMap(data);
          }
}
