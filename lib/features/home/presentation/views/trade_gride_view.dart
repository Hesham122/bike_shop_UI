import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/assets.dart';
import 'package:online_bike_shop/features/description/presentation/views/description_view.dart';
import 'package:online_bike_shop/features/home/presentation/views/trade_card.dart';

class TradeGrideView extends StatefulWidget {
  const TradeGrideView({super.key});
  static const imageAssets = [
    Assets.byce,
    Assets.helmet,
    Assets.byce,
    Assets.helmet,
    Assets.helmet,
    Assets.byce,
    Assets.helmet,
    Assets.byce,
    Assets.helmet,
    Assets.helmet,
    Assets.byce,
    Assets.helmet,
    Assets.byce,
    Assets.helmet,
    Assets.helmet,
    Assets.byce,
  ];

  @override
  State<TradeGrideView> createState() => _TradeGrideViewState();
}

class _TradeGrideViewState extends State<TradeGrideView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    DescriptionView(imgByce: TradeGrideView.imageAssets[index]),
                transitionDuration: const Duration(milliseconds: 500),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: ScaleTransition(
                          scale: Tween<double>(begin: 0.9, end: 1.0).animate(
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
          child: TradeCard(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            imageAsset: TradeGrideView.imageAssets[index],
            selectedIndex: selectedIndex == index,
          ),
        );
      }, childCount: TradeGrideView.imageAssets.length),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 260,
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 4,
      ),
    );
  }
}
