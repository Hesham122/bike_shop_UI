import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/assets.dart';
import 'package:online_bike_shop/core/widgets/custom_home_button.dart';

class ButtonsRow extends StatefulWidget {
  const ButtonsRow({super.key});
  static const homeButtons = [
    Assets.all,
    Assets.battery,
    Assets.road,
    Assets.mountain,
    Assets.accessory,
  ];

  @override
  State<ButtonsRow> createState() => _ButtonsRowState();
}

class _ButtonsRowState extends State<ButtonsRow> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: List.generate(
        ButtonsRow.homeButtons.length,
        (index) => Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: index * 8.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: CustomHomeButton(
              assetName: ButtonsRow.homeButtons[index],
              isSelected: selectedIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
