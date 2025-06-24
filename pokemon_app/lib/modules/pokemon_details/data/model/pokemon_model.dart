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

  AbilitiesModel({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });
}

@JsonSerializable()
class AbilityModel {
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
class GameIndicesModel {
  final int? gameIndex;
  final AbilitiesModel? version;

  GameIndicesModel({required this.gameIndex, required this.version});

  factory GameIndicesModel.fromJson(Map<String, dynamic> json) =>
      _$GameIndicesModelFromJson(json);
}

@JsonSerializable()
class MovesModel {
  final AbilitiesModel? move;
  final List<VersionGroupDetailsModel>? versionGroupDetails;

  MovesModel({required this.move, required this.versionGroupDetails});

  factory MovesModel.fromJson(Map<String, dynamic> json) =>
      _$MovesModelFromJson(json);
}

@JsonSerializable()
class VersionGroupDetailsModel {
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
class SpritesModel {
  @JsonKey(name: 'back_default')
  final String? backDefault;
  @JsonKey(name: 'back_female')
  final String? backFemale;
  @JsonKey(name: 'back_shiny')
  final String? backShiny;
  @JsonKey(name: 'back_shiny_female')
  final String? backShinyFemale;
  @JsonKey(name: 'front_default')
  final String? frontDefault;
  @JsonKey(name: 'front_female')
  final String? frontFemale;
  @JsonKey(name: 'front_shiny')
  final String? frontShiny;
  @JsonKey(name: 'front_shiny_female')
  final String? frontShinyFemale;
  @JsonKey(name: 'other')
  final OtherModel? other;

  SpritesModel({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
    required this.other,
  });

  factory SpritesModel.fromJson(Map<String, dynamic> json) =>
      _$SpritesModelFromJson(json);
}

@JsonSerializable()
class OtherModel {
  @JsonKey(name: 'dream_world')
  final DreamWorldModel? dreamWorld;
  factory OtherModel.fromJson(Map<String, dynamic> json) =>
      _$OtherModelFromJson(json);

  OtherModel({required this.dreamWorld});
}

@JsonSerializable()
class DreamWorldModel {
  @JsonKey(name: 'front_default')
  final String? frontDefault;

  factory DreamWorldModel.fromJson(Map<String, dynamic> json) =>
      _$DreamWorldModelFromJson(json);

  DreamWorldModel({required this.frontDefault});
}

@JsonSerializable()
class StatsModel {
  final int? baseStat;
  final int? effort;
  final AbilitiesModel? stat;

  StatsModel({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory StatsModel.fromJson(Map<String, dynamic> json) =>
      _$StatsModelFromJson(json);
}

@JsonSerializable()
class TypesModel {
  final int? slot;
  final AbilitiesModel? type;

  TypesModel({required this.slot, required this.type});

  factory TypesModel.fromJson(Map<String, dynamic> json) =>
      _$TypesModelFromJson(json);
}
