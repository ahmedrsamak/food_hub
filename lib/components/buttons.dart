import 'package:flutter/material.dart';
import 'package:food_hub/shared/styles/texts_styles.dart';

class CustomButtons {
  static Widget textOnlyButton({
    double width = 30,
    double height = 20,
    Color buttonColor = Colors.white,
    TextStyle? textStyle,
    required String text,
    required void Function()? onTap,
  }) =>
      Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              width: width,
              height: height,
              child: Text(
                text,
                style: textStyle,
              ),
            ),
          ),
        ),
      );

  static Widget textLogoButton({
    double width = 30,
    double height = 20,
    Color buttonColor = Colors.white,
    TextStyle? textStyle,
    EdgeInsets logoPadding = const EdgeInsets.symmetric(horizontal: 5),
    required String text,
    required void Function()? onTap,
    required String logo,
    required double logoHeight,
    required double logoWidth,
  }) =>
      Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              width: width,
              height: height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/$logo.png",
                    height: logoHeight,
                    width: logoWidth,
                  ),
                  Padding(padding: logoPadding),
                  Text(
                    text,
                    style: textStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  static Widget CirculIconButton(
          {Color? iconColor,
          Color? splashColor,
          required Function()? onTap,
          double width = 20,
          double height = 20,
          required Icon icon}) =>
      ClipOval(
        child: Material(
          color: iconColor,
          child: InkWell(
            splashColor: splashColor,
            onTap: onTap,
            child: SizedBox(
              width: width,
              height: height,
              child: icon,
            ),
          ),
        ),
      );
}
