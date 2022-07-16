import 'package:flutter/material.dart';
import 'package:food_hub/components/buttons.dart';
import 'package:food_hub/components/custom_shadow.dart';
import 'package:food_hub/components/otherCustomWidgets.dart';
import 'package:food_hub/components/textFormField.dart';
import 'package:food_hub/components/texts.dart';
import 'package:food_hub/shared/styles/colors.dart';
import 'package:food_hub/shared/styles/texts_styles.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Image.asset("assets/images/left_ellipse_sign_in_screen.png"),
              Positioned(
                left: 27,
                top: 37,
                child: CustomShadow(
                  child: FoodHubCustomButtons.iconOnlyButton(
                    width: 38,
                    borderRadius: 10,
                    height: 38,
                    buttonColor: FoodHubColors.white,
                    icon: Icons.arrow_back,
                    onTap: () {}, // TODO add Back action
                  ),
                ),
              )
            ]),
            Spacer(),
            Image.asset("assets/images/right_ellipse_sign_up_screen.png"),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(26),
        child: Column(
          children: [
            Spacer(flex: 2),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Login",
                style: FoodHubTextStyles.defualtTextStyle(
                    fontsize: 36, fontWeight: FontWeight.w600),
              ),
            ),
            Spacer(flex: 2),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "E-mail",
                style: FoodHubTextStyles.defualtTextStyle(
                    color: FoodHubColors.subTextColor),
              ),
            ),
            Spacer(flex: 1),
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
            ),
            Spacer(flex: 2),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Password",
                style: FoodHubTextStyles.defualtTextStyle(
                    color: FoodHubColors.subTextColor),
              ),
            ),
            Spacer(flex: 1),
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
            ),
            Spacer(flex: 2),
            Text("Forgot password?",
                style: FoodHubTextStyles.defualtTextStyle(
                    color: FoodHubColors.primaryColor)),
            Spacer(flex: 2),
            CustomShadow(
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
            Spacer(flex: 2),
            FoodHubCustomTexts.customTextWithUrl(
              text1: "Don’t have an account? ",
              text2: "Sign Up",
              text1Style: FoodHubTextStyles.defualtTextStyle(
                  color: FoodHubColors.urlMainTextColor),
              text2Style: FoodHubTextStyles.defualtTextStyle(
                color: FoodHubColors.primaryColor,
              ),
            ),
            Spacer(flex: 3),
            FoodHubCustomWidgets.customDividerWithCenterText(
                text: "Sign up with",
                textStyle: FoodHubTextStyles.defualtTextStyle(
                    color: FoodHubColors.urlMainTextColor, fontsize: 14)),
            Spacer(flex: 1),
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
                ),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
