import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/styles.dart';
import 'package:online_bike_shop/core/widgets/gredient_icon.dart';

class BikeDetails extends StatelessWidget {
  const BikeDetails({
    super.key,
    required this.imageAsset,
    this.selectedIndex = false, this.onTap,
   
  });
  final String imageAsset;
  final bool selectedIndex;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Light reflection
        Positioned(
          right: 16,
          top: 18,
          child: GredientIcon(selectedIndex: selectedIndex,onTap: onTap,),
        ),
        Positioned(
          top: 40,
          bottom: 100,
          left: 16,
          right: 16,
          child: Center(child: Image.asset(imageAsset)),
        ),
        Positioned(
          left: 18,
          right: 35,
          top: 145,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.0001)
              ..rotateX(0)
              ..rotateY(0.3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(
                  "Road Bike",
                  style: AppStyle.styleMeduim15(
                    context,
                  ).copyWith(fontSize: 13, color: Colors.white70),
                ),
                SizedBox(height: 2),
                FittedBox(
                  child: Text(
                    "PEUGEOT - LR01 ",
                    style: AppStyle.styleBold15(context),
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  "\$1,999.99",
                  style: AppStyle.styleMeduim15(
                    context,
                  ).copyWith(fontSize: 13, color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
