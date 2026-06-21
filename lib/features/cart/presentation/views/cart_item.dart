import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/styles.dart';
import 'package:online_bike_shop/features/cart/presentation/views/add_remove_cart_button.dart';
import 'package:online_bike_shop/features/cart/presentation/views/product_pic.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.imageCart,
    required this.titleCart,
    required this.priceCart,
  });
  final String imageCart;
  final String titleCart;
  final String priceCart;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(child: ProductPic(imageCart: imageCart)),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  titleCart,
                  style: AppStyle.styleBold15(context).copyWith(fontSize: 15),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "\$ $priceCart",
                style: AppStyle.styleRegular15(
                  context,
                ).copyWith(fontSize: 13, color: Color(0xff3C9EEA)),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {},
                child: AddRemoveCartButton(icon: Icon(Icons.add, size: 26)),
              ),
              SizedBox(width: 12),
              Text(
                "1",
                style: AppStyle.styleRegular15(
                  context,
                ).copyWith(color: Colors.white70),
              ),
              SizedBox(width: 12),
              GestureDetector(
                onTap: () {},
                child: AddRemoveCartButton(
                  icon: Icon(Icons.remove, size: 26),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.white24,
                      const Color.fromARGB(66, 94, 93, 93),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
