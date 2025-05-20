import 'package:json_annotation/json_annotation.dart';

part 'pokemon_model.g.dart';


@JsonSerializable()
class PokemonModel {
  final List<AbilitiesModel>? abilities;
  final int? baseExperience;
  final CriesModel? cries;
  final List<GameIndicesModel>? gameIndices;
  final int? height;
  final int? id;
  final bool? isDefault;
  final String? locationAreaEncounters;
  final List<MovesModel>? moves;
  final String? name;
  final int? order;
  final AbilitiesModel? species;
  final SpritesModel? sprites;
  final List<StatsModel>? stats;
  final List<TypesModel>? types;
  final int? weight;
 
  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);

  PokemonModel({
    required this.abilities,
    required this.baseExperience,
    required this.cries,
    required this.gameIndices,
    required this.height,
    required this.id,
    required this.isDefault,
    required this.locationAreaEncounters,
    required this.moves,
    required this.name,
    required this.order,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
    
  });
}

@JsonSerializable()
class AbilitiesModel {
  final AbilityModel? ability;
  final bool? isHidden;
  final int? slot;
  
  factory AbilitiesModel.fromJson(Map<String, dynamic> json) =>
      _$AbilitiesModelFromJson(json);

  AbilitiesModel({required this.ability, required this.isHidden, required this.slot,});
}

@JsonSerializable()
class AbilityModel  {
    final String? name;
  final String? url;

  AbilityModel({required this.name, required this.url});
  
  factory AbilityModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityModelFromJson(json);
}

@JsonSerializable()
class CriesModel {
    final String? latest;
  final String? legacy;

  CriesModel({required this.latest, required this.legacy});
 
  factory CriesModel.fromJson(Map<String, dynamic> json) =>
      _$CriesModelFromJson(json);
}

@JsonSerializable()
class GameIndicesModel  {
    final int? gameIndex;
  final AbilitiesModel? version;

  GameIndicesModel({required this.gameIndex, required this.version});
  
  factory GameIndicesModel.fromJson(Map<String, dynamic> json) =>
      _$GameIndicesModelFromJson(json);
}

@JsonSerializable()
class MovesModel  {
    final AbilitiesModel? move;
  final List<VersionGroupDetailsModel>? versionGroupDetails;

  MovesModel({required this.move, required this.versionGroupDetails});
 
  factory MovesModel.fromJson(Map<String, dynamic> json) =>
      _$MovesModelFromJson(json);
}

@JsonSerializable()
class VersionGroupDetailsModel  {
   final int? levelLearnedAt;
  final AbilitiesModel? moveLearnMethod;
  final int? order;
  final AbilitiesModel? versionGroup;

  VersionGroupDetailsModel(
      {required this.levelLearnedAt,
      required this.moveLearnMethod,
      required this.order,
      required this.versionGroup});
  
  factory VersionGroupDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupDetailsModelFromJson(json);
}

@JsonSerializable()
class SpritesModel  {
  final String? backDefault;
  final String? backFemale;
  final String? backShiny;
  final String? backShinyFemale;
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;
  
 

  SpritesModel(
      {required this.backDefault,
      required this.backFemale,
      required this.backShiny,
      required this.backShinyFemale,
      required this.frontDefault,
      required this.frontFemale,
      required this.frontShiny,
      required this.frontShinyFemale,
  });
 
  factory SpritesModel.fromJson(Map<String, dynamic> json) =>
      _$SpritesModelFromJson(json);
}

@JsonSerializable()
class StatsModel  {
   final int? baseStat;
  final int? effort;
  final AbilitiesModel? stat;
  

  StatsModel( {required this.baseStat, required this.effort, required this.stat,});

 
  factory StatsModel.fromJson(Map<String, dynamic> json) =>
      _$StatsModelFromJson(json);
}

@JsonSerializable()
class TypesModel  {
    final int? slot;
  final AbilitiesModel? type;

  TypesModel({required this.slot, required this.type});
 
  factory TypesModel.fromJson(Map<String, dynamic> json) =>
      _$TypesModelFromJson(json);
}
