import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/assets.dart';
import 'package:online_bike_shop/core/utls/styles.dart';
import 'package:online_bike_shop/core/widgets/background_home.dart';
import 'package:online_bike_shop/core/widgets/customappbar_button.dart';
import 'package:online_bike_shop/features/description/presentation/views/add_cart_container.dart';
import 'package:online_bike_shop/features/description/presentation/views/text_details.dart';
import 'package:online_bike_shop/features/home/presentation/views/description_button.dart';

class ProductDetailsCard extends StatefulWidget {
  const ProductDetailsCard({super.key, required this.imgByce});
  final String imgByce;
  @override
  State<ProductDetailsCard> createState() => ProductDetailsCardState();
}

class ProductDetailsCardState extends State<ProductDetailsCard>
    with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  bool expanded = true;

  void collapseSheet() {
    _scrollController.animateTo(
      280,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );

    setState(() {
      expanded = false;
    });
  }

  void expandSheet() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );

    setState(() {
      expanded = true;
    });
  }

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final selected = selectedIndex == index;
    return Stack(
      children: [
        Positioned(
          right: -2,
          top: 22,
          child: BackgroundHome(backGround: Assets.rectangle),
        ),
        DraggableHome(
          centerTitle: true,
          alwaysShowTitle: true,
          alwaysShowLeadingAndAction: true,
          leading: Container(
            margin: EdgeInsets.all(7),
            child: CustomappbarButton(
              () {
                expanded
                    ? Navigator.pop(context)
                    : {
                        _scrollController.animateTo(
                          0, // expand
                          duration: const Duration(milliseconds: 700),
                          curve: Curves.easeInOut,
                        ),
                      };

                setState(() {
                  expanded = !expanded;
                });
              },
              icon: expanded
                  ? Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white)
                  : Transform.rotate(
                      angle: -3.14159 / 2,
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                      ),
                    ),
            ),
          ),
          physics: const NeverScrollableScrollPhysics(),
          backgroundColor: Colors.transparent,
          headerExpandedHeight: .78,
          scrollController: _scrollController,
          headerWidget: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                top: expanded ? 290 : 220, // 👈 control movement
                left: 0,
                right: 0,
                child: AnimatedBuilder(
                  animation: slidingAnimation,
                  builder: (BuildContext context, Widget? child) {
                    return SlideTransition( 
                      position: slidingAnimation,
                      child: Image.asset(widget.imgByce,fit: BoxFit.fill,),
                    );
                  },
                ),
              ),
            ],
          ),
          title: Text(
            "PEUGEOT - LR01",
            style: AppStyle.styleBold15(context).copyWith(fontSize: 20),
          ),
          body: [
            Container(
              height: 1000,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                gradient: LinearGradient(
                  colors: [Color(0xff353F54), Color(0xff222834)],
                  begin: AlignmentGeometry.topLeft,
                  end: AlignmentGeometry.bottomRight,
                ),
              ),
              // padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  expanded
                      ? Padding(
                          padding: const EdgeInsets.all(14),
                          child: DescriptionButton(onPressed: collapseSheet),
                        )
                      : DescriptionButton(onPressed: collapseSheet),
                  // SizedBox(height: 24,),
                  expanded ? Container() : TextDetails(),
                  expanded ? Container() : AddCartContainer(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1400),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(-2, -1), end: Offset.zero).animate(
          CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
        );

    animationController.forward();
  }
}
