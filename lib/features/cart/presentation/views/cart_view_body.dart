import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/constant.dart';
import 'package:online_bike_shop/core/utls/styles.dart';
import 'package:online_bike_shop/core/widgets/cart_paid_details.dart';
import 'package:online_bike_shop/features/cart/presentation/views/cart_appbar.dart';
import 'package:online_bike_shop/features/cart/presentation/views/cart_price.dart';
import 'package:online_bike_shop/features/cart/presentation/views/listview_cart_item.dart';
import 'package:online_bike_shop/features/cart/presentation/views/text_field_cart.dart';
import 'package:slider_button/slider_button.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CartAppbar(),
        ),
        SizedBox(height: 37),
        Expanded(flex: 3, child: ListviewCartItem()),

        TextFieldCart(),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 26),
          child: Text(
            "Your bag qualifies for free shipping",
            style: AppStyle.styleMeduim15(
              context,
            ).copyWith(color: Colors.white70),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CartPaidDetails(title: "Subtotal:", price: "\$6,119.99"),
              SizedBox(height: 8),
              CartPaidDetails(title: "Delivery Fee:", price: "\$0"),
              SizedBox(height: 8),
              CartPaidDetails(title: "Discount:", price: "30%"),
              SizedBox(height: 16),
              CartPrice(),
              SizedBox(height: 20),
              SizedBox(
                height: 44,
                child: SliderButton(
                  vibrationFlag: true,
                  radius: 12,
                  width: 174,

                  buttonWidth: 44,
                  backgroundColor: Color.fromARGB(255, 59, 70, 90),
                  label: Text(
                    "Checkout",
                    style: AppStyle.styleBold15(
                      context,
                    ).copyWith(color: Colors.white),
                  ),

                  // icon: const Icon(Icons.arrow_forward,color: Colors.amber,),
                  action: () async {
                    SliderButton(
                      radius: 12,
                      width: 174,

                      buttonWidth: 110,
                      backgroundColor: Color.fromARGB(255, 59, 70, 90),
                      label: Text(
                        "Checkout",
                        style: AppStyle.styleBold15(
                          context,
                        ).copyWith(color: Colors.white),
                      ),

                      // icon: const Icon(Icons.arrow_forward,color: Colors.amber,),
                      action: () async {
                     
                        return null;
                      },
                      child: Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),

                          gradient: const LinearGradient(
                            colors: [kPrimaryColor, kSecondaryColor],
                            begin: Alignment.topLeft,
                            end: Alignment.centerLeft,
                          ),
                        ),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    );
                    return null;
                  },
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),

                      gradient: const LinearGradient(
                        colors: [kPrimaryColor, kSecondaryColor],
                        begin: Alignment.topLeft,
                        end: Alignment.centerLeft,
                      ),
                    ),
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
