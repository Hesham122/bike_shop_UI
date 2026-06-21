import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/assets.dart';
import 'package:online_bike_shop/core/utls/cart_model.dart';
import 'package:online_bike_shop/features/cart/presentation/views/cart_item.dart';

class ListviewCartItem extends StatelessWidget {
  const ListviewCartItem({super.key});
  static List<CartModel> items = [
    CartModel(
      imageCart: Assets.byce,
      priceCart: "1,999.99",
      titleCart: "PEUGEOT - LR01",
    ),

    CartModel(
      imageCart: Assets.elec,
      priceCart: "3,999.99",
      titleCart: "SMITH - Trade",
    ),
    CartModel(
      imageCart: Assets.helmet,
      priceCart: "120",
      titleCart: "PILOT - CHROMOLY 520",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CartItem(
                imageCart: items[index].imageCart,
                priceCart: items[index].priceCart,
                titleCart: items[index].titleCart,
              ),
            ),
            Divider(height: 34, color: Colors.white24, thickness: .5),
          ],
        );
      },
    );
  }
}
