import 'package:injectable/injectable.dart';
import 'package:pokemon_app/core/services/dio_settings.dart';
import 'package:pokemon_app/modules/pokemon_details/data/api/get_pokemon_details_api.dart';
import 'package:pokemon_app/modules/pokemon_details/data/maper/pokemon_model_maper.dart';

import 'package:pokemon_app/modules/pokemon_details/domain/entity/pokemon_entity.dart';
import 'package:pokemon_app/modules/pokemon_details/domain/repository/pokemon_details_domain_repository.dart';

@LazySingleton(as: PokemonDetailsDomainRepository)
class PokemonDetailsRepository extends PokemonDetailsDomainRepository {
  final PokemonModelMaper _mapper;

  PokemonDetailsRepository({required PokemonModelMaper mapper}) : _mapper = mapper;

 
  @override
  Future<PokemonEntity> getPokemonDetails(int id) async {
    final api  = GetPokemonDetailsApi(DioSettings().dio);

    final result = await api.getPokemonDetails(id);
    return _mapper.fromMap(result);
    
  }
  

}