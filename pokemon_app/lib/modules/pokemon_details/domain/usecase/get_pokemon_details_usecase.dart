import 'package:injectable/injectable.dart';
import 'package:pokemon_app/modules/pokemon_details/domain/entity/pokemon_entity.dart';
import 'package:pokemon_app/modules/pokemon_details/domain/repository/pokemon_details_domain_repository.dart';

@injectable
class GetPokemonDetailsUsecase {
  final PokemonDetailsDomainRepository _repository;

  GetPokemonDetailsUsecase({required PokemonDetailsDomainRepository repository}) : _repository = repository;

  Future<PokemonEntity> execute(int id){
    return _repository.getPokemonDetails(id);
  } 

}