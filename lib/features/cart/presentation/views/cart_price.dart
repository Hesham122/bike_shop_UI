import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/styles.dart';

class CartPrice extends StatelessWidget {
  const CartPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return   
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total:",
              style: AppStyle.styleBold15(
                context,
              ).copyWith(color: const Color.fromARGB(206, 255, 255, 255)),
            ),
            Text(
              "\$4,283.99",
              style: AppStyle.styleBold15(
                context,
              ).copyWith(color: Color(0xff38B8EA), fontSize: 17),
            ),
          ],
        );
  }
}