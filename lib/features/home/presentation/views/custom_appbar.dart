import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/styles.dart';
import 'package:online_bike_shop/core/widgets/customappbar_button.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Choose Your Bike",
          style: AppStyle.styleBold15(context).copyWith(fontSize: 20),
        ),
        CustomappbarButton(
          () {
            
          },
          icon: Icon(Icons.search, color: Colors.white)),
      ],
    );
  }
}
