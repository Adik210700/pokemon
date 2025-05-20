import 'package:injectable/injectable.dart';
import 'package:pokemon_app/modules/pokemon_details/data/model/pokemon_model.dart';
import 'package:pokemon_app/modules/pokemon_details/domain/entity/pokemon_entity.dart';

@injectable
class PokemonModelMaper {
  PokemonEntity fromMap(PokemonModel response) {
    return PokemonEntity(
      abilities: response.abilities?.map((e) {
            return _mapAbilities(e);
          }).toList() ??
          [],
      baseExperience: response.baseExperience ?? 0,
      cries: response.cries != null
          ? _mapCries(response.cries!)
          : CriesEntity(latest: '', legacy: ''),
      gameIndices: [],
      height: response.height ?? 0,
      id: response.id ?? 0,
      isDefault: response.isDefault ?? false,
      locationAreaEncounters: '',
      moves: response.moves?.map((e) => _mapMoves(e)).toList() ?? [],
      name: response.name ?? '',
      order: response.order ?? 0,
      species: response.species != null
          ? _mapAbilities(response.species!)
          : AbilitiesEntity(
              ability: AbilityEntity(name: '', url: ''),
              isHidden: false,
              slot: 0),
      sprites: response.sprites != null
          ? _mapSprites(response.sprites!)
          : SpritesEntity(
              backDefault: '',
              backFemale: '',
              backShiny: '',
              backShinyFemale: '',
              frontDefault: '',
              frontFemale: '',
              frontShiny: '',
              frontShinyFemale: '',
            ),
      stats: response.stats?.map((stat) => _mapStats(stat)).toList() ?? [],
      types: response.types?.map((type) => _mapTypes(type)).toList() ?? [],
      weight: response.weight ?? 0,
    );
  }

  TypesEntity _mapTypes(TypesModel response) {
    return TypesEntity(
      slot: response.slot ?? 0,
      type: response.type != null
          ? _mapAbilities(response.type!)
          : AbilitiesEntity(
              ability: AbilityEntity(name: '', url: ''),
              isHidden: false,
              slot: 0),
    );
  }

  StatsEntity _mapStats(StatsModel response) {
    return StatsEntity(
      baseStat: response.baseStat ?? 0,
      effort: response.effort ?? 0,
      stat: response.stat != null
          ? _mapAbilities(response.stat!)
          : AbilitiesEntity(
              ability: AbilityEntity(name: '', url: ''),
              isHidden: false,
              slot: 0),
    );
  }

  SpritesEntity _mapSprites(SpritesModel response) {
    return SpritesEntity(
      backDefault: response.backDefault ?? '',
      backFemale: response.backFemale ?? '',
      backShiny: response.backShiny ?? '',
      backShinyFemale: response.backShinyFemale ?? '',
      frontDefault: response.frontDefault ?? '',
      frontFemale: response.frontFemale ?? '',
      frontShiny: response.frontShiny ?? '',
      frontShinyFemale: response.frontShinyFemale ?? '',
    );
  }

  AbilitiesEntity _mapAbilities(AbilitiesModel response) {
    return AbilitiesEntity(
        ability: response.ability != null
            ? _mapAbility(response.ability!)
            : AbilityEntity(name: '', url: ''),
        isHidden: response.isHidden ?? false,
        slot: response.slot ?? 0);
  }

  AbilityEntity _mapAbility(AbilityModel response) {
    return AbilityEntity(name: response.name ?? '', url: response.url ?? '');
  }

  CriesEntity _mapCries(CriesModel response) {
    return CriesEntity(latest: '', legacy: '');
  }

  MovesEntity _mapMoves(MovesModel response) {
    return MovesEntity(
        move: response.move != null
            ? _mapAbilities(response.move!)
            : AbilitiesEntity(
                ability: AbilityEntity(name: '', url: ''),
                isHidden: false,
                slot: 0),
        versionGroupDetails: response.versionGroupDetails
                ?.map(
                  (e) => _mapVersionGroup(e),
                )
                .toList() ??
            []);
  }

  VersionGroupDetailsEntity _mapVersionGroup(
      VersionGroupDetailsModel response) {
    return VersionGroupDetailsEntity(
      levelLearnedAt: response.levelLearnedAt ?? 0,
      moveLearnMethod: response.moveLearnMethod != null
          ? _mapAbilities(response.moveLearnMethod!)
          : AbilitiesEntity(
              ability: AbilityEntity(name: '', url: ''),
              isHidden: false,
              slot: 0),
      order: response.order ?? 0,
      versionGroup: response.versionGroup != null
          ? _mapAbilities(response.versionGroup!)
          : AbilitiesEntity(
              ability: AbilityEntity(name: '', url: ''),
              isHidden: false,
              slot: 0,
            ),
    );
  }
}
