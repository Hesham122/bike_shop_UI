import 'package:flutter/material.dart';
import 'package:online_bike_shop/core/utls/constant.dart';

class AppStyle {
  static TextStyle styleBold15(BuildContext context) {
    return TextStyle(
      color: const Color.fromARGB(255, 255, 255, 255),
      fontSize: getResponsiveFontsize(context,fontsize: 15),
      fontFamily: kPrimaryFont,
      fontWeight: FontWeight.bold,
    );
  }
  static TextStyle styleMeduim15(BuildContext context) {
    return TextStyle(
      color: const Color.fromARGB(255, 255, 255, 255),
      fontSize: getResponsiveFontsize(context,fontsize: 15),
      fontFamily: kPrimaryFont,
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle styleRegular15(BuildContext context) {
    return TextStyle(
      color: const Color.fromARGB(255, 255, 255, 255),
      fontSize: getResponsiveFontsize(context,fontsize: 15),
      fontFamily: kPrimaryFont,
      fontWeight: FontWeight.w400,
    );
  }
}
double getResponsiveFontsize(BuildContext context, {required double fontsize}) {
  double scaleFactor = getScaleFactor(context);
  double responsivefontsize = fontsize * scaleFactor;
  double lowerlimit = responsivefontsize * .8;
  double upperlimit = responsivefontsize * 1.2;
return  responsivefontsize.clamp(lowerlimit, upperlimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) { 
    return width / 700;
  } else {
    return width / 1380;
  }
}