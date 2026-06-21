import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/styles.dart';

class CartPaidDetails extends StatelessWidget {
  const CartPaidDetails({super.key, required this.title, required this.price});
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppStyle.styleBold15(
                context,
              ).copyWith(color: const Color.fromARGB(206, 255, 255, 255)),
            ),
            Text(
              price,
              style: AppStyle.styleBold15(
                context,
              ).copyWith(color: Colors.white60),
            ),
          ],
        ),
      
      ],
    );
  }
}
