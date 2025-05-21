
  import 'package:pokemon_app/core/base/app_event.dart';

class GetPokemonDetailsEvent extends AppEvent{
    final int id;

  GetPokemonDetailsEvent({required this.id});

  }
