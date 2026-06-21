import 'package:flutter/material.dart';

class ProductPic extends StatelessWidget {
  const ProductPic({super.key, required this.imageCart});
  final String imageCart;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 100,
      height: 90,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          stops: const [0, 1],
          colors: [Color(0xff363E51), Color(0xff4C5770)],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: FittedBox(fit: BoxFit.scaleDown, child: Image.asset(imageCart)),
    );
  }
}
