import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/constant.dart';

class CustomappbarButton extends StatelessWidget {
  const CustomappbarButton(this.onPressed, {super.key, required this.icon});
  final Widget icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0, 1],
          colors: [kPrimaryColor, kSecondaryColor],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(onPressed: onPressed, icon: icon),
    );
  }
}
