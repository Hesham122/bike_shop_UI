import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/styles.dart';
import 'package:online_bike_shop/core/widgets/customappbar_button.dart';

class CartAppbar extends StatelessWidget {
  const CartAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomappbarButton(() {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white)),
        SizedBox(width: 43),
        Text(
          "My Shopping Cart",
          style: AppStyle.styleBold15(context).copyWith(fontSize: 20),
        ),
      ],
    );
  }
}
