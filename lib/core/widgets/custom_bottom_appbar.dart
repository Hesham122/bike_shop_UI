import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/widgets/custombuttom_appbar_body.dart';

class CustomBottomAppbar extends StatelessWidget {
  const CustomBottomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
  clipBehavior: Clip.none,
  children: [
    CustomBottomBar(),
  ],
);
}
}
