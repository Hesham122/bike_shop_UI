import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';
import 'package:online_bike_shop/features/home/presentation/views/bike_discount.dart';

class BikeCard extends StatelessWidget {
  const BikeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.0001)
              ..rotateX(0.29)
              ..rotateY(-0.15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                child: BikeDiscount(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
