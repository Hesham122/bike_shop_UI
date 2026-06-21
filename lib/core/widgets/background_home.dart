import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_bike_shop/core/utls/assets.dart';

class BackgroundHome extends StatelessWidget {
  const BackgroundHome({super.key, this.backGround});
  final String? backGround;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(backGround??  Assets.rectangleBG, fit: BoxFit.fill);
  }
}
