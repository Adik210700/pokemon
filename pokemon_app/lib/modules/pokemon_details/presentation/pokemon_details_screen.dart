import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokemon_app/core/base/app_state.dart';
import 'package:pokemon_app/core/constans/app_dimensions.dart';
import 'package:pokemon_app/core/enum/state_status.dart';
import 'package:pokemon_app/core/extension/context_extension.dart';
import 'package:pokemon_app/core/extension/double_extension.dart';
import 'package:pokemon_app/core/theme/app_textstyles.dart';
import 'package:pokemon_app/main.dart';
import 'package:pokemon_app/modules/home/presentation/welcome/presentation/widget/welcome_bacground_widget.dart';
import 'package:pokemon_app/modules/pokemon_details/domain/entity/pokemon_entity.dart';
import 'package:pokemon_app/modules/pokemon_details/presentation/bloc/get_pokemon_details_bloc.dart';
import 'package:pokemon_app/modules/pokemon_details/presentation/get_pokemon_details_event.dart';

@RoutePage()
class PokemonDetailsScreen extends StatefulWidget {
  const PokemonDetailsScreen(
      {super.key, required this.id, required this.maxCount});

  final int id;
  final int maxCount;

  @override
  State<PokemonDetailsScreen> createState() => _PokemonDetailsScreenState();
}

class _PokemonDetailsScreenState extends State<PokemonDetailsScreen> {
  final _getPokemonDetailsBloc = di<GetPokemonDetailsBloc>();
  late int id;
  @override
  void initState() {
    id = widget.id;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _getPokemonDetailsBloc
        ..add(
          GetPokemonDetailsEvent(id: id),
        ),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            const WelcomeBacgroundWidget(),
            BlocBuilder<GetPokemonDetailsBloc, AppState<PokemonEntity>>(
                builder: (context, state) {
              if (state.status == StateStatus.loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state.status == StateStatus.success) {
                return Stack(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SafeArea(
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    state.model?.name.toUpperCase() ??
                                        'no name',
                                    textAlign: TextAlign.center,
                                    style: AppTextstyles.bodyBold.copyWith(
                                        fontSize: 28, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 5,
                              left: 0,
                              child: BackButton(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: AppDimensions.mediumPadding.paddingHorizontal,
                        child: SizedBox(
                          width: double.infinity,
                          height: context.mq.height * 0.5,
                          child: SvgPicture.network(
                            state.model?.svgImage ?? '',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                if (id > 1) {
                                  id--;
                                  _getPokemonDetailsBloc.add(
                                    GetPokemonDetailsEvent(id: id),
                                  );
                                }
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                size: 60,
                                color: Colors.blueAccent,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                if (id < widget.maxCount) {
                                  id++;
                                  _getPokemonDetailsBloc.add(
                                    GetPokemonDetailsEvent(id: id),
                                  );
                                }
                              },
                              icon: Icon(
                                Icons.arrow_forward,
                                size: 60,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              }
              return const Center(
                child: Text('No Data'),
              );
            }),
          ],
        ),
      ),
    );
  }
}
