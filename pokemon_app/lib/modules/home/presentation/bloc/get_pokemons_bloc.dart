import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_app/core/base/app_state.dart';
import 'package:pokemon_app/core/enum/state_status.dart';
import 'package:pokemon_app/modules/home/domain/entity/pokemons_list_entity.dart';
import 'package:pokemon_app/modules/home/domain/usecase/get_pokemons_usecase.dart';

@injectable
class GetPokemonsBloc
    extends Bloc<GetPokemonsEvent, AppState<PokemonsListEntity>> {
  List<PokemonsListElementEntity> pokemons = [];
  final GetPokemonsUsecase _getPokemonsUsecase;
  GetPokemonsBloc({required GetPokemonsUsecase getPokemonsUsecase})
      : _getPokemonsUsecase = getPokemonsUsecase,
        super(
          AppState(status: StateStatus.init),
        ) {
    on<GetPokemonsListEvent>((event, emit) async {
      
      try {
        final result = await _getPokemonsUsecase.execute(
            limit: event.limit, offset: event.offset);
            pokemons = [...pokemons,...result.results];
        emit(
          AppState(
            
            status: StateStatus.success,
            model: PokemonsListEntity(
              count: result.count,
              next: result.next,
              previous: result.previous,
              results: pokemons,
            ),
          ),
        );
      } catch (e) {
        emit(AppState(status: StateStatus.error));
      }
    });
  }
}

abstract class GetPokemonsEvent {}

class GetPokemonsListEvent extends GetPokemonsEvent {
  final int limit;
  final int offset;

  GetPokemonsListEvent({required this.limit, required this.offset});
}
