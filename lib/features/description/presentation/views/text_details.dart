import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/styles.dart';

class TextDetails extends StatelessWidget {
  const TextDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, ),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "PEUGEOT - LR01",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      
          const SizedBox(height: 8),
      
          Text(
            "The LR01 uses the same design as the most iconic bikes from PEUGEOT Cycles' 130-year history and combines it with agile, dynamic performance that's perfectly suited to navigating today's cities. As well as a lugged steel frame and iconic PEUGEOT black-and-white chequer design, this city bike also features a 16-speed Shimano Claris drivetrain.",
            style: AppStyle.styleRegular15(
              context,
            ).copyWith(color: Colors.white60),
          ),
        ],
      ),
    );
  }
}
