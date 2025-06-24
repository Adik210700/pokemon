// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) => PokemonModel(
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => AbilitiesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      baseExperience: (json['baseExperience'] as num?)?.toInt(),
      cries: json['cries'] == null
          ? null
          : CriesModel.fromJson(json['cries'] as Map<String, dynamic>),
      gameIndices: (json['gameIndices'] as List<dynamic>?)
          ?.map((e) => GameIndicesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: (json['height'] as num?)?.toInt(),
      id: (json['id'] as num?)?.toInt(),
      isDefault: json['isDefault'] as bool?,
      locationAreaEncounters: json['locationAreaEncounters'] as String?,
      moves: (json['moves'] as List<dynamic>?)
          ?.map((e) => MovesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      order: (json['order'] as num?)?.toInt(),
      species: json['species'] == null
          ? null
          : AbilitiesModel.fromJson(json['species'] as Map<String, dynamic>),
      sprites: json['sprites'] == null
          ? null
          : SpritesModel.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => StatsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => TypesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: (json['weight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PokemonModelToJson(PokemonModel instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'baseExperience': instance.baseExperience,
      'cries': instance.cries,
      'gameIndices': instance.gameIndices,
      'height': instance.height,
      'id': instance.id,
      'isDefault': instance.isDefault,
      'locationAreaEncounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'name': instance.name,
      'order': instance.order,
      'species': instance.species,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };

AbilitiesModel _$AbilitiesModelFromJson(Map<String, dynamic> json) =>
    AbilitiesModel(
      ability: json['ability'] == null
          ? null
          : AbilityModel.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['isHidden'] as bool?,
      slot: (json['slot'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AbilitiesModelToJson(AbilitiesModel instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'isHidden': instance.isHidden,
      'slot': instance.slot,
    };

AbilityModel _$AbilityModelFromJson(Map<String, dynamic> json) => AbilityModel(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$AbilityModelToJson(AbilityModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

CriesModel _$CriesModelFromJson(Map<String, dynamic> json) => CriesModel(
      latest: json['latest'] as String?,
      legacy: json['legacy'] as String?,
    );

Map<String, dynamic> _$CriesModelToJson(CriesModel instance) =>
    <String, dynamic>{
      'latest': instance.latest,
      'legacy': instance.legacy,
    };

GameIndicesModel _$GameIndicesModelFromJson(Map<String, dynamic> json) =>
    GameIndicesModel(
      gameIndex: (json['gameIndex'] as num?)?.toInt(),
      version: json['version'] == null
          ? null
          : AbilitiesModel.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameIndicesModelToJson(GameIndicesModel instance) =>
    <String, dynamic>{
      'gameIndex': instance.gameIndex,
      'version': instance.version,
    };

MovesModel _$MovesModelFromJson(Map<String, dynamic> json) => MovesModel(
      move: json['move'] == null
          ? null
          : AbilitiesModel.fromJson(json['move'] as Map<String, dynamic>),
      versionGroupDetails: (json['versionGroupDetails'] as List<dynamic>?)
          ?.map((e) =>
              VersionGroupDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovesModelToJson(MovesModel instance) =>
    <String, dynamic>{
      'move': instance.move,
      'versionGroupDetails': instance.versionGroupDetails,
    };

VersionGroupDetailsModel _$VersionGroupDetailsModelFromJson(
        Map<String, dynamic> json) =>
    VersionGroupDetailsModel(
      levelLearnedAt: (json['levelLearnedAt'] as num?)?.toInt(),
      moveLearnMethod: json['moveLearnMethod'] == null
          ? null
          : AbilitiesModel.fromJson(
              json['moveLearnMethod'] as Map<String, dynamic>),
      order: (json['order'] as num?)?.toInt(),
      versionGroup: json['versionGroup'] == null
          ? null
          : AbilitiesModel.fromJson(
              json['versionGroup'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionGroupDetailsModelToJson(
        VersionGroupDetailsModel instance) =>
    <String, dynamic>{
      'levelLearnedAt': instance.levelLearnedAt,
      'moveLearnMethod': instance.moveLearnMethod,
      'order': instance.order,
      'versionGroup': instance.versionGroup,
    };

SpritesModel _$SpritesModelFromJson(Map<String, dynamic> json) => SpritesModel(
      backDefault: json['back_default'] as String?,
      backFemale: json['back_female'] as String?,
      backShiny: json['back_shiny'] as String?,
      backShinyFemale: json['back_shiny_female'] as String?,
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
      other: json['other'] == null
          ? null
          : OtherModel.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpritesModelToJson(SpritesModel instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
      'other': instance.other,
    };

OtherModel _$OtherModelFromJson(Map<String, dynamic> json) => OtherModel(
      dreamWorld: json['dream_world'] == null
          ? null
          : DreamWorldModel.fromJson(
              json['dream_world'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OtherModelToJson(OtherModel instance) =>
    <String, dynamic>{
      'dream_world': instance.dreamWorld,
    };

DreamWorldModel _$DreamWorldModelFromJson(Map<String, dynamic> json) =>
    DreamWorldModel(
      frontDefault: json['front_default'] as String?,
    );

Map<String, dynamic> _$DreamWorldModelToJson(DreamWorldModel instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

StatsModel _$StatsModelFromJson(Map<String, dynamic> json) => StatsModel(
      baseStat: (json['baseStat'] as num?)?.toInt(),
      effort: (json['effort'] as num?)?.toInt(),
      stat: json['stat'] == null
          ? null
          : AbilitiesModel.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatsModelToJson(StatsModel instance) =>
    <String, dynamic>{
      'baseStat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

TypesModel _$TypesModelFromJson(Map<String, dynamic> json) => TypesModel(
      slot: (json['slot'] as num?)?.toInt(),
      type: json['type'] == null
          ? null
          : AbilitiesModel.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TypesModelToJson(TypesModel instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
