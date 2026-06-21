import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_bike_shop/core/utls/constant.dart';

class CustomHomeButton extends StatelessWidget {
  const CustomHomeButton({
    super.key,
    required this.assetName,
    required this.isSelected,
  });
  final String assetName;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        gradient: isSelected
            ? LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [0, 1],
                colors: [kPrimaryColor, kSecondaryColor],
              )
            : LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [0, 1],
                colors: [Color(0xff353F54), Color(0xff222834)],
              ),
        borderRadius: BorderRadius.circular(12),
      ),
      child:   Center(child: SvgPicture.asset(assetName)),
    );
  }
}
