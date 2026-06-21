import 'package:flutter/material.dart';
import 'package:online_bike_shop/features/cart/presentation/views/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: CartViewBody()));
  }
}
