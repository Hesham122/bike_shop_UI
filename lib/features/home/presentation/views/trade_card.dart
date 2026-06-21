import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:online_bike_shop/features/home/presentation/views/bike_details.dart';

class TradeCard extends StatelessWidget {
  const TradeCard({
    super.key,
    required this.imageAsset,
      this.selectedIndex = false, this.onTap,
     
  });
  final String imageAsset;
  final bool selectedIndex;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
  
    return Center(
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.0001)
          ..rotateX(0.29)
          ..rotateY(-0.3),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
            child: Container(
              width: 185,
              height: 241,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color.fromARGB(
                    255,
                    197,
                    197,
                    197,
                  ).withValues(alpha: 0.3),
                  width: 1.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.37),
                    blurRadius: 25,
                    // offset: const Offset(1, 20),
                  ),
                  BoxShadow(
                    color: Colors.white.withValues(alpha: 0.001),
                    blurRadius: 10,
                    offset: const Offset(-5, -5),
                  ),
                ],
              ),
              child: BikeDetails(
                imageAsset: imageAsset,
                selectedIndex: selectedIndex,
                onTap: onTap,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
