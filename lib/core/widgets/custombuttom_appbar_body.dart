import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/constant.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  final icons = [
    Icons.directions_bike,
    Icons.map,
    Icons.shopping_cart,
    Icons.person,
    Icons.description,
  ];

@override
Widget build(BuildContext context) {
  return SizedBox(
    height: 90,
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: ClipPath(
            clipper: BottomBarClipper(),
            child: Container(
              height: 120,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF363E51),
                    Color(0xFF181C24),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                children: List.generate(
                  icons.length,
                  (index) {
                    final isSelected = selectedIndex == index;

                    return Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Center(
                          child: isSelected
                              ? const SizedBox(width: 60)
                              : Icon(
                                  icons[index],
                                  color: Colors.white70,
                                  size: 28,
                                ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),

        // Floating Selected Icon
        Positioned(
          top: -20,
          left: (MediaQuery.of(context).size.width / icons.length) *
                  selectedIndex +
              ((MediaQuery.of(context).size.width / icons.length) / 2) -
              30,
          child: Transform(
              alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.0001)
              ..rotateX(0.29)
              ..rotateY(-0.25),
            child: Container(
              width: 75,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0, 1],
            colors: [kPrimaryColor, kSecondaryColor],
                    ),
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.4),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Icon(
                icons[selectedIndex],
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
}
class BottomBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // top left = 20px
    path.moveTo(0, 30);

    // top right = 30px
    path.lineTo(size.width, 10);

    // right side curve
    path.lineTo(size.width, size.height - 35);
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width - 35,
      size.height,
    );

    // bottom
    path.lineTo(35, size.height);

    // left side curve
    path.quadraticBezierTo(
      0,
      size.height,
      0,
      size.height - 35,
    );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}