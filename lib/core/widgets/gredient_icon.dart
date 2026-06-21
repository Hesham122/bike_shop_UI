import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/constant.dart';

class GredientIcon extends StatefulWidget {
  const GredientIcon({
    super.key,
    this.selectedIndex = false, this.onTap,
     
  });
  final bool selectedIndex;
  final Function()? onTap;
  @override
  State<GredientIcon> createState() => _GredientIconState();
}

class _GredientIconState extends State<GredientIcon> {
  bool isFavorite = false;
  int? select ;
  @override 
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: ShaderMask(
        shaderCallback: (Rect bounds) {
          return widget.selectedIndex
              ? LinearGradient(
                  colors: [kPrimaryColor, kSecondaryColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds)
              : LinearGradient(
                  colors: [Colors.white, Colors.white],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
        },
        child: const Icon(Icons.favorite_border, size: 30, color: Colors.white),
      ),
    );
  }
}
