import 'package:flutter/material.dart';

class CustomButtons {
  static Widget textOnlyButton({
    double width = 30,
    double height = 20,
    Color buttonColor = Colors.white,
    TextStyle? textStyle,
    required String text,
    required void Function()? onTap,
  }) =>
      InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      );
}
