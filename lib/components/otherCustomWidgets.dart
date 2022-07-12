import 'package:flutter/material.dart';

class CustomWidgets {
  static Widget customDividerWithCenterText({
    Color? dividerColor,
    required String text,
    TextStyle? textStyle,
    double thickness = 1,
  }) =>
      Row(
        children: [
          Expanded(child: Divider(color: dividerColor, thickness: thickness)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: Text(
              text,
              style: textStyle,
            ),
          ),
          Expanded(child: Divider(color: dividerColor, thickness: 1)),
        ],
      );
}
