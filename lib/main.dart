import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/constant.dart';
import 'package:online_bike_shop/features/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:kBackgroundColor
      ),
      home: const HomeView(),
    );
  }
}
