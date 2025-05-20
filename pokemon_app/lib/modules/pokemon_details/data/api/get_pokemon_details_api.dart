
import 'package:dio/dio.dart';
import 'package:pokemon_app/modules/pokemon_details/data/model/pokemon_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'get_pokemon_details_api.g.dart';

@RestApi(baseUrl: 'https://pokeapi.co/api/v2')
abstract class GetPokemonDetailsApi {
  factory GetPokemonDetailsApi(Dio dio, {String? baseUrl}) = _GetPokemonDetailsApi;


    @GET('/pokemon/{id}')
  Future<PokemonModel> getPokemonDetails(@Path('id') int id);
}