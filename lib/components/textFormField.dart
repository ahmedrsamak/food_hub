import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import '../shared/styles/colors.dart';
import '../shared/styles/texts_styles.dart';

class FoodHubTextFormField {
  static Widget customTextFormField(
      {required TextEditingController controller,
      TextInputType? textInputType,
      Widget? prefixIcon,
      Widget? suffixIcon,
      String? hintText,
      void Function()? onTap,
      void Function()? suffixIconPressed,
      void Function(String)? onChange,
      void Function(String)? onSubmit,
      String? Function(String?)? validator,
      bool obscureText = false,
      TextStyle?
          textStyle, //FoodHubTextStyles.defualtTextStyle(fontsize: 17, fontWeight: FontWeight.w500)
      Color? cursorColor // FoodHubColors.secondaryColor,
      }) {
    return TextFormField(
      obscuringCharacter: "●",
      cursorColor: cursorColor,
      style: textStyle,
      controller: controller,
      obscureText: obscureText,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: FoodHubColors.disabledBorderColor),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: FoodHubColors.enabledBorderColor),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onTap: onTap,
      validator: validator,
      onChanged: onChange,
      onFieldSubmitted: onSubmit,
    );
  }

  //******************************************************************************************************//
  static Widget customPhoneInputField(
      {required TextEditingController controller,
      String hintText = "Phone Number",
      void Function()? onTap,
      void Function(PhoneNumber)? onChange,
      void Function(Country)? onCountryChange,
      TextStyle? textStyle,
      Color? cursorColor // FoodHubColors.secondaryColor,
      }) {
    return IntlPhoneField(
      initialCountryCode: 'EG',
      cursorColor: cursorColor,
      style: textStyle,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: FoodHubColors.disabledBorderColor),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: FoodHubColors.enabledBorderColor),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onTap: onTap,
      onChanged: onChange,
      onCountryChanged: onCountryChange,
    );
  }
}
