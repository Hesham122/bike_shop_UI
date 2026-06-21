import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/assets.dart';

import 'package:online_bike_shop/features/description/presentation/views/description_view.dart';
import 'package:online_bike_shop/features/home/presentation/views/bike_card.dart';
import 'package:online_bike_shop/features/home/presentation/views/buttons_row.dart';
import 'package:online_bike_shop/features/home/presentation/views/custom_appbar.dart';
import 'package:online_bike_shop/features/home/presentation/views/trade_gride_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Positioned(top: 100, child: BackgroundHome()),

        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 4),
          child: CustomScrollView(
            //  physics:BouncingScrollPhysics() ,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    CustomAppbar(),
                    SizedBox(height: 24),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                      DescriptionView(imgByce: Assets.elec,),
                            transitionDuration: const Duration(
                              milliseconds: 500,
                            ),
                            transitionsBuilder:
                                (
                                  context,
                                  animation,
                                  secondaryAnimation,
                                  child,
                                ) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: ScaleTransition(
                                      scale: Tween<double>(begin: 0.9, end: 1.0)
                                          .animate(
                                            CurvedAnimation(
                                              parent: animation,
                                              curve: Curves.easeOut,
                                            ),
                                          ),
                                      child: child,
                                    ),
                                  );
                                },
                          ),
                        );
                      },
                      child: BikeCard(),
                    ),
                    SizedBox(height: 12),
                    ButtonsRow(),
                    SizedBox(height: 8),
                  ],
                ),
              ),
              TradeGrideView(),
            ],
          ),
        ),
      ],
    );
  }
}
