import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FoodHubCustomTexts {
  static RichText customTextWithUrl({
    required String text1,
    required String text2,
    TextStyle? text1Style,
    TextStyle? text2Style,
    void Function()? onTap,
  }) =>
      RichText(
        text: TextSpan(
          children: [
            TextSpan(text: text1, style: text1Style),
            TextSpan(
                text: text2,
                style: text2Style,
                recognizer: TapGestureRecognizer()..onTap = onTap),
          ],
        ),
      );
}
