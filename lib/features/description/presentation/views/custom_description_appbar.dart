import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/styles.dart' show AppStyle;
import 'package:online_bike_shop/core/widgets/customappbar_button.dart';

class CustomDescriptionAppbar extends StatelessWidget {
  const CustomDescriptionAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomappbarButton(
          () {
            
          },
          icon: Icon(Icons.search, color: Colors.white)),
        Text(
          "Choose Your Bike",
          style: AppStyle.styleBold15(context).copyWith(fontSize: 20),
        ),
      ],
    );
  }
}
