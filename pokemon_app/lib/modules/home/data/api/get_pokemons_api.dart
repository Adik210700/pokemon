import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'get_pokemons_api.g.dart';

@RestApi(baseUrl: 'https://pokeapi.co/api/v2/')
abstract class GetPokemonsApi {
  factory GetPokemonsApi(Dio dio, {String? baseUrl}) = _GetPokemonsApi;

  @GET('/pokemon')
  Future<PokemonsListModel> getPokemons(@Query('limit') int  limit, @Query('offset') int offset);
}

@JsonSerializable()
class PokemonsListModel {
  final int? count;
  final String? next;
  final String? previous;
  final List<PokemonsListElementModel>? results;

  PokemonsListModel({this.count, this.next, this.previous, this.results});

  factory PokemonsListModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonsListModelFromJson(json);
}

@JsonSerializable()
class PokemonsListElementModel {
  final String? name;
  final String? url;

  PokemonsListElementModel({this.name, this.url});

  factory PokemonsListElementModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonsListElementModelFromJson(json);
}
