import 'package:flutter/material.dart';
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart'
    as inset
    show BoxShadow;

class DescriptionButton extends StatelessWidget {
  const DescriptionButton({super.key, this.onPressed});
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
   
    const shadowColorLight = Color(0xff3f485f);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: onPressed,

            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF28303F),
              fixedSize: const Size(130, 43),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 0, // 👈 important (remove default shadow)
              shadowColor: Colors.transparent,
              padding: EdgeInsets.zero,
            ),

            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  inset.BoxShadow(
                    offset: Offset(8, 4),
                    blurRadius: 3,
                    color: Color.fromARGB(40, 247, 248, 250),
                    inset: true,
                  ),
                  inset.BoxShadow(
                    offset: Offset(5, 2),
                    blurRadius: 3,
                    color: shadowColorLight,
                    inset: true,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                "Description",
                style: TextStyle(
                  // color: selected
                  //     ? const Color(0xFF42A5FF)
                  //     :
                  color: Color(0xFF42A5FF),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(width: 40),
          ElevatedButton(
            onPressed: () {
              // onpressed();
              // setState(() {
              //   selectedIndex = index;
              // });
            },

            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF28303F),
              fixedSize: const Size(130, 43),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 0, // 👈 important (remove default shadow)
              shadowColor: Colors.transparent,
              padding: EdgeInsets.zero,
            ),

            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  inset.BoxShadow(
                    offset: Offset(8, 4),
                    blurRadius: 3,
                    color: Color.fromARGB(40, 247, 248, 250),
                    inset: true,
                  ),
                  inset.BoxShadow(
                    offset: Offset(5, 2),
                    blurRadius: 3,
                    color: shadowColorLight,
                    inset: true,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                "Specification",
                style: TextStyle(
                  // color: selected
                  //     ? const Color(0xFF42A5FF)
                  //     :
                  color: Color(0xFF42A5FF),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          // ElevatedButton(
          //   onPressed: toggleSheet,
          //   child: Text(expanded ? "Collapse" : "Expand"),
          // ),
        ],
      ),
    );
  }
}
