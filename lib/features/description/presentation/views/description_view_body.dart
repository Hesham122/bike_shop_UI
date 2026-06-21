import 'package:flutter/material.dart';
import 'package:online_bike_shop/features/description/presentation/views/description_bottom_sheet.dart';

class DescriptionViewBody extends StatelessWidget {
  const DescriptionViewBody({super.key, required this.imgByce, });

  final String imgByce;
  @override
  Widget build(BuildContext context) {
    return ProductDetailsCard(imgByce: imgByce,);
  }
}
