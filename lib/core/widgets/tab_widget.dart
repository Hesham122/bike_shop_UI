import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';

class TabWidget extends StatefulWidget {
  const TabWidget({super.key});

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  @override
  Widget build(BuildContext context) {
   
    return  DraggableHome(
       
        headerWidget: Container(
          color: Colors.blue,
          child: const Center(
            child: Text(
              'Bike',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        title: const Text("PEUGEOT LR01"),
        body: [
          Container(
            height: 800,
            padding: const EdgeInsets.all(20),
            child: const Text(
              "Description of bike...",
            ),
          ),
        ],
      );
  }
}
