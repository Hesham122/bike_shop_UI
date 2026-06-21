import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/constant.dart';

class AddRemoveCartButton extends StatelessWidget {
  const AddRemoveCartButton({super.key, required this.icon, this.gradient});
  final Icon icon;
  final Gradient? gradient;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        gradient:gradient?? LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0, 1],
          colors: [kPrimaryColor, kSecondaryColor],
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: icon,
    );
  }
}
