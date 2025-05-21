import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/core/base/app_state.dart';
import 'package:pokemon_app/core/enum/state_status.dart';
import 'package:pokemon_app/main.dart';
import 'package:pokemon_app/modules/pokemon_details/domain/entity/pokemon_entity.dart';
import 'package:pokemon_app/modules/pokemon_details/presentation/bloc/get_pokemon_details_bloc.dart';
import 'package:pokemon_app/modules/pokemon_details/presentation/get_pokemon_details_event.dart';

@RoutePage()
class PokemonDetailsScreen extends StatefulWidget {
  const PokemonDetailsScreen({super.key, required this.id});

  final int id;

  @override
  State<PokemonDetailsScreen> createState() => _PokemonDetailsScreenState();
}

class _PokemonDetailsScreenState extends State<PokemonDetailsScreen> {
  final _getPokemonDetailsBloc = di<GetPokemonDetailsBloc>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: _getPokemonDetailsBloc..add(GetPokemonDetailsEvent(id: widget.id)),
        child: BlocBuilder<GetPokemonDetailsBloc, AppState<PokemonEntity>>(
            builder: (context, state) {
          if (state.status == StateStatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.status == StateStatus.success) {
            return Center(
              child: Text(state.model?.name ?? 'No name'),
            );
          }
          return const Center(
            child: Text('No Data'),
          );
        }),
      ),
    );
  }
}
