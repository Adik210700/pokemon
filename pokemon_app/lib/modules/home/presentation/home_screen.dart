import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/core/base/app_state.dart';
import 'package:pokemon_app/core/config/router/router.gr.dart';
import 'package:pokemon_app/core/constans/app_dimensions.dart';
import 'package:pokemon_app/core/enum/state_status.dart';
import 'package:pokemon_app/core/extension/double_extension.dart';
import 'package:pokemon_app/core/theme/app_textstyles.dart';

import 'package:pokemon_app/main.dart';

import 'package:pokemon_app/modules/home/domain/entity/pokemons_list_entity.dart';
import 'package:pokemon_app/modules/home/presentation/bloc/get_pokemons_bloc.dart';
import 'package:pokemon_app/modules/home/presentation/welcome/presentation/widget/welcome_bacground_widget.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int offset = 0;
  final _getPokemonsBloc = di<GetPokemonsBloc>()
    ..add(GetPokemonsListEvent(limit: 20, offset: 0));
  ScrollController paginationScrollController = ScrollController();
  bool isReadyToLoadMore = true;

  @override
  void dispose() {
    paginationScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(
            children: [
              WelcomeBacgroundWidget(),
              Center(
                child: Column(
                  children: [
                    Expanded(
                      child: BlocProvider.value(
                        value: _getPokemonsBloc,
                        child: BlocConsumer<GetPokemonsBloc,
                                AppState<PokemonsListEntity>>(
                            listener: (context, state) {
                          if (state.status == StateStatus.success) {
                            isReadyToLoadMore = true;
                          }
                        }, builder: (context, state) {
                          if (state.status == StateStatus.success) {
                            return NotificationListener(
                              onNotification: (notification) {
                                if (paginationScrollController
                                        .position.pixels >=
                                    paginationScrollController
                                            .position.maxScrollExtent -
                                        50) {
                                  if (isReadyToLoadMore) {
                                    isReadyToLoadMore = false;
                                    offset += 20;
                                    _getPokemonsBloc.add(GetPokemonsListEvent(
                                        limit: 20, offset: offset));
                                  }
                                }
                                return false;
                              },
                              child: ListView.separated(
                                padding: AppDimensions
                                    .mediumPadding.paddingHorizontal,
                                separatorBuilder: (context, index) {
                                  return AppDimensions
                                      .smallPadding.verticalSpace;
                                },
                                controller: paginationScrollController,
                                itemCount: state.model?.results.length ?? 0,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                  onTap: () {
                                    context.router.push(
                                      PokemonDetailsRoute(
                                        maxCount: state.model?.count ?? 0,
                                        id: index + 1,
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: AppDimensions
                                            .mediumBorderRadius.circular,
                                        color: Colors.black.withOpacity(0.3)),
                                    child: ListTile(
                                      leading: Text((index + 1).toString()),
                                      title: Text(
                                        state.model?.results[index].name
                                                .toUpperCase() ??
                                            '',
                                        style: AppTextstyles.bodyMedium
                                            .copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }
                          if (state.status == StateStatus.loading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return const SizedBox.shrink();
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
