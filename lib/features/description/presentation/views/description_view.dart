import 'package:flutter/material.dart';
import 'package:online_bike_shop/features/description/presentation/views/description_view_body.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView({super.key, required this.imgByce});
  final String imgByce;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DescriptionViewBody(imgByce: imgByce,));
  }
}
