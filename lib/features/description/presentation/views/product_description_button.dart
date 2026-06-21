import 'package:flutter/material.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart' as inset;

class ProductDescriptionButton extends StatefulWidget {
  const ProductDescriptionButton({super.key, required this.onPressed});
  final Function()? onPressed;
  @override
  State<ProductDescriptionButton> createState() =>
      _ProductDescriptionButtonState();
}

class _ProductDescriptionButtonState extends State<ProductDescriptionButton> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return
    //  Container(
    //   // padding: const EdgeInsets.symmetric(horizontal: 22),
    //   decoration: const BoxDecoration(
    //     color: Color(0xFF27314A),
    //     borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
    //   ),
    //   ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _tab("Description", 0,widget.onPressed!),
        const SizedBox(width: 20),
        _tab("Specification", 1,widget.onPressed!),
      ],
    );
  }

  Widget _tab(String title, int index, Function() onpressed) {
    const shadowColorDark = Color(0xff28303F);
    const shadowColorLight = Color(0xff3f485f);
    final selected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        onpressed;
        setState(() {
          selectedIndex = index;
        });
        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProductDetailsCard()));
      },
      child: Container(
        width: 140,
        height: 55,
        decoration: BoxDecoration(
          color: const Color(0xFF28303F),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            // Top-left dark shadow to create the inset depth
            inset.BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 6,
              color: shadowColorDark,
              inset: true,
            ),
            // Bottom-right light highlight to complete the skeuomorphic well
            inset.BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 6,
              color: shadowColorLight,
              inset: true,
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: selected ? const Color(0xFF42A5FF) : Colors.white70,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
