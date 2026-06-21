import 'package:flutter/material.dart';
import 'package:online_bike_shop/features/cart/presentation/views/cart_view.dart';

class AddCartContainer extends StatelessWidget {
  const AddCartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xff353F54),
            const Color.fromARGB(255, 61, 71, 90),
          ],
        ),

        borderRadius: BorderRadius.vertical(top: Radius.circular(55)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 24),

          const Text(
            "\$1,999.99",
            style: TextStyle(
              color: Color(0xFF42A5FF),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
SizedBox(width: 20,),
          Container(
            height: 44,
            width: 160,
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                colors: [Color(0xFF4DE3FF), Color(0xFF4B49FF)],
              ),
            ),
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartView()),
                  );
                },
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
