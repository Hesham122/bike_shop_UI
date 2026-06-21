import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/widgets/custom_bottom_appbar.dart';
import 'package:online_bike_shop/features/home/presentation/views/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(   
     
       bottomNavigationBar: CustomBottomAppbar(),
      body: SafeArea(child: const HomeViewBody()),
    );
  }
}