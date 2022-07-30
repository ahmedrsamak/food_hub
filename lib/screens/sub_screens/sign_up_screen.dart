import 'package:flutter/material.dart';
import 'package:food_hub/components/buttons.dart';
import 'package:food_hub/components/custom_shadow.dart';
import 'package:food_hub/components/otherCustomWidgets.dart';
import 'package:food_hub/components/textFormField.dart';
import 'package:food_hub/components/texts.dart';
import 'package:food_hub/shared/styles/colors.dart';
import 'package:food_hub/shared/styles/texts_styles.dart';

//TODO Add validator after complete
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/left_ellipse_sign_up_screen.png"),
              Spacer(),
              Image.asset("assets/images/right_ellipse_sign_up_screen.png"),
            ],
          ),
        ), //! Header image
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign Up",
                  style: FoodHubTextStyles.defualtTextStyle(
                      fontsize: 36, fontWeight: FontWeight.w600),
                ),
              ), //! Sign Up Text
              SizedBox(height: 31),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Full name",
                  style: FoodHubTextStyles.defualtTextStyle(
                      color: FoodHubColors.subTextColor),
                ),
              ), //! Full Name Label
              SizedBox(height: 12),
              FoodHubTextFormField.customTextFormField(
                controller:
                    TextEditingController(), // TODO Add TextInputController variable and action
                textStyle: FoodHubTextStyles.defualtTextStyle(
                    fontsize: 17, fontWeight: FontWeight.w500),
                cursorColor: FoodHubColors.secondaryColor,
                hintText: "Your full name",
                onSubmit: (value) {
                  print("$value");
                }, //TODO add OnSubmit Action
              ), //! Full Name textBox
              SizedBox(height: 29),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "E-mail",
                  style: FoodHubTextStyles.defualtTextStyle(
                      color: FoodHubColors.subTextColor),
                ),
              ), ////! Email Name label
              SizedBox(height: 12),
              FoodHubTextFormField.customTextFormField(
                textInputType: TextInputType.emailAddress,
                controller:
                    TextEditingController(), // TODO Add TextInputController variable and action
                textStyle: FoodHubTextStyles.defualtTextStyle(
                    fontsize: 17, fontWeight: FontWeight.w500),
                cursorColor: FoodHubColors.secondaryColor,
                hintText: "Your e-mail",
                onSubmit: (value) {
                  print("$value");
                }, //TODO add OnSubmit Action
              ), //! Email textBox
              SizedBox(height: 29),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Password",
                  style: FoodHubTextStyles.defualtTextStyle(
                      color: FoodHubColors.subTextColor),
                ),
              ), //! Password label
              SizedBox(height: 12),
              FoodHubTextFormField.customTextFormField(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: FoodHubColors.inactiveIconColor,
                  ),
                ),
                controller:
                    TextEditingController(), // TODO Add TextInputController variable and action
                textStyle: FoodHubTextStyles.defualtTextStyle(
                    fontsize: 17, fontWeight: FontWeight.w500),
                cursorColor: FoodHubColors.secondaryColor,
                hintText: "Your password",
                obscureText: true,
                onSubmit: (value) {
                  print("$value");
                }, //TODO add OnSubmit Action
              ), //! Password textBox
              SizedBox(height: 33),
              Align(
                alignment: Alignment.center,
                child: CustomShadow(
                  color: FoodHubColors.primaryColor,
                  child: FoodHubCustomButtons.textOnlyButton(
                    height: 60,
                    width: 248,
                    buttonColor: FoodHubColors.primaryColor,
                    textStyle: FoodHubTextStyles.defualtTextStyle(
                        fontsize: 15,
                        fontWeight: FontWeight.w600,
                        color: FoodHubColors.white),
                    text: "SIGN UP",
                    onTap: () {}, // TODO add Button on TAP
                  ),
                ),
              ), //! Sign Up Button
              SizedBox(height: 33),
              Align(
                alignment: Alignment.center,
                child: FoodHubCustomTexts.customTextWithUrl(
                  text1: "Already have an account? ",
                  text2: "Login",
                  onTap: () {
                    Navigator.pushNamed(
                        context, '/login screen'); //! Navigate to Login
                  },
                  text1Style: FoodHubTextStyles.defualtTextStyle(
                      color: FoodHubColors.urlMainTextColor),
                  text2Style: FoodHubTextStyles.defualtTextStyle(
                    color: FoodHubColors.primaryColor,
                  ),
                ),
              ), // ! TextRich with Login text
              SizedBox(height: 54),
              FoodHubCustomWidgets.customDividerWithCenterText(
                  text: "Sign up with",
                  textStyle: FoodHubTextStyles.defualtTextStyle(
                      color: FoodHubColors.urlMainTextColor,
                      fontsize: 14)), //! Custom Divider
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomShadow(
                    child: FoodHubCustomButtons.textLogoButton(
                      textStyle: FoodHubTextStyles.defualtTextStyle(),
                      text: "Facebook",
                      onTap:
                          () {}, // TODO add Facebook logo Function in welcome screen
                      logo: "facebook_logo",
                      logoHeight: 28,
                      logoWidth: 28,
                      width: 140,
                      height: 54,
                    ),
                  ), //! Facebook button
                  SizedBox(width: 31),
                  CustomShadow(
                    child: FoodHubCustomButtons.textLogoButton(
                      text: "Google",
                      onTap:
                          () {}, // TODO add on Tap google Function in welcome screen
                      logo: "google_logo",
                      logoHeight: 28,
                      logoWidth: 28,
                      width: 140,
                      height: 54,
                      textStyle: FoodHubTextStyles.defualtTextStyle(),
                    ),
                  ), //! Google button
                ],
              ), //! Facebook and Google sign up buttons
              SizedBox(height: 10),
            ],
          ), // ! List view to Enable scrolling instead of Column
        ),
      ),
    );
  }
}
