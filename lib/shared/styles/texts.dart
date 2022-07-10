import 'package:flutter/material.dart';
import 'package:food_hub/shared/styles/colors.dart';

class FoodHubTextStyles {
  static TextStyle splashText1 = TextStyle(
      fontSize: 40, fontFamily: "Phosphate", color: FoodHubColors.white);
  static TextStyle splashText2 = TextStyle(
      fontSize: 40,
      fontFamily: "Phosphate",
      color: FoodHubColors.white.withOpacity(0.6));
  static TextStyle defualtTextStyle(
          {Color? color, double fontsize = 14, FontWeight? fontWeight}) =>
      TextStyle(
        color: color!,
        fontSize: fontsize,
        fontFamily: "Jost",
        fontWeight: fontWeight,
      );
}
