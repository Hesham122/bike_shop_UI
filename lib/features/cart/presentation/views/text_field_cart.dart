import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/constant.dart';
import 'package:online_bike_shop/core/utls/styles.dart';

class TextFieldCart extends StatelessWidget {
  const TextFieldCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),

              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(14, 0, 0, 0),
                  Color.fromARGB(8, 255, 255, 255),
                ],
                begin: Alignment.topLeft,
                end: Alignment.centerLeft,
              ),
            ),
            child: TextField(
              enabled: true,
              decoration: InputDecoration(
                enabled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12),

                  borderRadius: BorderRadius.circular(12),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                suffixIcon: Container(
                  width: 114,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      stops: const [0, 1],
                      colors: [kPrimaryColor, kSecondaryColor],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(),
                    child: Text("Apply", style: AppStyle.styleBold15(context)),
                  ),
                ),
              ),
            ),
          ),
        );
  }
}