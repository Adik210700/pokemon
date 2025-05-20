class PokemonEntity {
  final List<AbilitiesEntity>? abilities;
  final int baseExperience;
  final CriesEntity cries;
  final List<GameIndicesEntity> gameIndices;
  final int height;
  final int id;
  final bool isDefault;
  final String locationAreaEncounters;
  final List<MovesEntity> moves;
  final String name;
  final int order;
  final AbilitiesEntity species;
  final SpritesEntity sprites;
  final List<StatsEntity> stats;
  final List<TypesEntity> types;
  final int weight;
  

  PokemonEntity({
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

class AbilitiesEntity {
  final AbilityEntity ability;
  final bool isHidden;
  final int slot;
  
  AbilitiesEntity({required this.ability, required this.isHidden, required this.slot});

 
}

class AbilityEntity {
  final String name;
  final String url;

  AbilityEntity({required this.name, required this.url});
}

class CriesEntity {
  final String latest;
  final String legacy;

  CriesEntity({required this.latest, required this.legacy});
}

class GameIndicesEntity {
  final int gameIndex;
  final AbilitiesEntity version;

  GameIndicesEntity({required this.gameIndex, required this.version});
}

class MovesEntity {
  final AbilitiesEntity move;
  final List<VersionGroupDetailsEntity> versionGroupDetails;

  MovesEntity({required this.move, required this.versionGroupDetails});
}

class VersionGroupDetailsEntity {
  final int levelLearnedAt;
  final AbilitiesEntity moveLearnMethod;
  final int order;
  final AbilitiesEntity versionGroup;

  VersionGroupDetailsEntity(
      {required this.levelLearnedAt,
      required this.moveLearnMethod,
      required this.order,
      required this.versionGroup});
}

class SpritesEntity {
  final String backDefault;
  final String backFemale;
  final String backShiny;
  final String backShinyFemale;
  final String frontDefault;
  final String frontFemale;
  final String frontShiny;
  final String frontShinyFemale;
 

  SpritesEntity(
      {required this.backDefault,
      required this.backFemale,
      required this.backShiny,
      required this.backShinyFemale,
      required this.frontDefault,
      required this.frontFemale,
      required this.frontShiny,
      required this.frontShinyFemale,
  });
}

class StatsEntity {
  final int baseStat;
  final int effort;
  final AbilitiesEntity stat;
  

  StatsEntity( {required this.baseStat, required this.effort, required this.stat,});
}

class TypesEntity {
  final int slot;
  final AbilitiesEntity type;

  TypesEntity({required this.slot, required this.type});
}
