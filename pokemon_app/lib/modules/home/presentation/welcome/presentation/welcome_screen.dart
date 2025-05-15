import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_app/core/config/router/router.gr.dart';
import 'package:pokemon_app/core/constans/app_dimensions.dart';
import 'package:pokemon_app/core/extension/double_extension.dart';
import 'package:pokemon_app/core/resource/app_assets.dart';
import 'package:pokemon_app/core/theme/app_textstyles.dart';
import 'package:pokemon_app/modules/home/presentation/welcome/presentation/widget/welcome_bacground_widget.dart';

@RoutePage()
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          WelcomeBacgroundWidget(),
          Center(
            child: Image.asset(AppAssets.welcomePokeball),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    AppDimensions.mediumPadding.horizontalSpace,
                    Text(
                      'Pokemon',
                      style: AppTextstyles.bodySemibold
                          .copyWith(fontSize: 47, color: Colors.white),
                    ),
                    AppDimensions.mediumPadding.horizontalSpace,
                    SizedBox(height: 45, child: Image.asset(AppAssets.pokeball))
                  ],
                ),
                Image.asset(AppAssets.welcomeAsh),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => context.router.push(const HomeRoute()),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 13, horizontal: 38),
                    decoration: BoxDecoration(
                        color: Color(0xffFFCC18),
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      'Start Viewing',
                      style: AppTextstyles.bodyBold
                          .copyWith(fontSize: 24, color: Colors.black),
                    ),
                  ),
                  AppDimensions.hugePadding.verticalSpace,
                  Text(
                    'Don’t have an account?',
                    style: AppTextstyles.bodyBold
                        .copyWith(fontSize: 15, color: Colors.white),
                  ),
                  AppDimensions.hugePadding.verticalSpace,
                  AppDimensions.hugePadding.verticalSpace,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
