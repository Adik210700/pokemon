import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_app/core/base/app_event.dart';
import 'package:pokemon_app/core/base/app_state.dart';
import 'package:pokemon_app/core/enum/state_status.dart';
import 'package:pokemon_app/modules/pokemon_details/domain/entity/pokemon_entity.dart';
import 'package:pokemon_app/modules/pokemon_details/domain/usecase/get_pokemon_details_usecase.dart';
import 'package:pokemon_app/modules/pokemon_details/presentation/get_pokemon_details_event.dart';

@injectable
class GetPokemonDetailsBloc extends Bloc<AppEvent, AppState<PokemonEntity>> {
  final GetPokemonDetailsUsecase _getPokemonDetailsUsecase;
  GetPokemonDetailsBloc(
      {required GetPokemonDetailsUsecase getPokemonDetailsUsecase})
      : _getPokemonDetailsUsecase = getPokemonDetailsUsecase,
        super(
          AppState(
            status: StateStatus.init,
          ),
        ) {
    on<GetPokemonDetailsEvent>(
      (event, emit) {
        emit(
          AppState(
            status: StateStatus.loading,
          ),
        );
        _getPokemonDetailsUsecase.execute(event.id).then((result) {
          emit(
            AppState.success( result),
          );
        }).catchError((error) {
          emit(
            AppState(
              status: StateStatus.error,
            ),
          );
        });
      },
    );
  }
}
