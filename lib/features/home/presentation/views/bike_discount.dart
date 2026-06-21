import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/assets.dart';
import 'package:online_bike_shop/core/utls/styles.dart';

class BikeDiscount extends StatelessWidget {
  const BikeDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                  width: 370,
                  height: 240,
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(0),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color.fromARGB(
                        255,
                        197,
                        197,
                        197,
                      ).withValues(alpha:  0.3),
                      width: 1.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.25),
                        blurRadius: 25,
                        offset: const Offset(15, 20),
                      ),
                      BoxShadow(
                        color: Colors.white.withValues(alpha: 0.1),
                        blurRadius: 10,
                        offset: const Offset(-5, -5),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      // Light reflection
                      Center(child: Image.asset(Assets.elec)),
                      Positioned(
                        bottom: 9,
                        left: 16,
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.identity()
                            ..setEntry(3, 2, 0.0001)
                            ..rotateX(0)
                            ..rotateY(0.3),
                          child: Text(
                            "30% Off",
                            style: AppStyle.styleBold15(
                              context,
                            ).copyWith(fontSize: 26, color: Colors.white60),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
  }
}