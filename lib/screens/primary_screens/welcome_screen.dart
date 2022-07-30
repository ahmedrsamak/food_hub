import 'package:flutter/material.dart';
import 'package:food_hub/components/buttons.dart';
import 'package:food_hub/components/otherCustomWidgets.dart';
import 'package:food_hub/components/texts.dart';
import 'package:food_hub/main.dart';
import 'package:food_hub/shared/styles/colors.dart';
import 'package:food_hub/shared/styles/texts_styles.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SafeArea Widget to keep distance between draggable top bar
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Colors.transparent, Colors.black],
            ),
            image: DecorationImage(
              opacity: 0.5,
              image: AssetImage("assets/images/welcome_screen_background.png"),
              fit: BoxFit.cover,
            ),
          ), // ! Background Image for Welcome Screen
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: FoodHubCustomButtons.textOnlyButton(
                    width: 55,
                    height: 32,
                    buttonColor: FoodHubColors.white,
                    text: "Skip",
                    textStyle: FoodHubTextStyles.defualtTextStyle(
                        color: FoodHubColors.primaryColor),
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, '/home screen'); // ! Navigate to Home Screen
                    },
                  ),
                ), // ! Skip Button
                Spacer(flex: 5),
                // Main text
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Welcome to\n",
                          style: FoodHubTextStyles.defualtTextStyle(
                            fontsize: 45,
                            color: FoodHubColors.textBlack,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                            text: "FoodHub",
                            style: FoodHubTextStyles.defualtTextStyle(
                              fontWeight: FontWeight.bold,
                              fontsize: 45,
                              color: FoodHubColors.primaryColor,
                            )),
                      ],
                    ),
                  ),
                ), // ! Welcome To Food Hub Text
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your favourite foods delivered\nfast at your door.",
                    style: FoodHubTextStyles.defualtTextStyle(
                        fontsize: 18, color: FoodHubColors.textBlack),
                  ),
                ), // ! Your favourite foods Text
                Spacer(flex: 10),
                FoodHubCustomWidgets.customDividerWithCenterText(
                  text: "sign in with",
                  textStyle: FoodHubTextStyles.defualtTextStyle(
                      color: FoodHubColors.white, fontWeight: FontWeight.w500),
                  dividerColor: FoodHubColors.white.withOpacity(0.5),
                ), // ! Divider custom widget
                Spacer(flex: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FoodHubCustomButtons.textLogoButton(
                      textStyle: FoodHubTextStyles.defualtTextStyle(),
                      text: "Facebook",
                      onTap:
                          () {}, // TODO add Facebook logo Function in welcome screen
                      logo: "facebook_logo",
                      logoHeight: 28,
                      logoWidth: 28,
                      width: 140,
                      height: 54,
                    ), //! Facebook Button
                    SizedBox(width: 15),
                    FoodHubCustomButtons.textLogoButton(
                      text: "Google",
                      onTap:
                          () {}, // TODO add on Tap google Function in welcome screen
                      logo: "google_logo",
                      logoHeight: 28,
                      logoWidth: 28,
                      width: 140,
                      height: 54,
                      textStyle: FoodHubTextStyles.defualtTextStyle(),
                    ), //! Google Button
                  ],
                ), // ! Google and facebook login buttons
                Spacer(flex: 2),
                FoodHubCustomButtons.textOnlyButton(
                  width: 295,
                  height: 54,
                  textStyle: FoodHubTextStyles.defualtTextStyle(
                    color: FoodHubColors.white,
                  ),
                  buttonColor: FoodHubColors.white.withOpacity(0.3),
                  text: "Start with email or phone",
                  onTap: () {
                    Navigator.pushNamed(context, '/sign up screen');
                  }, // TODO add Strat with email or phone button function in welcome screen
                ), // ! //! Start with mail Button
                Spacer(flex: 2),
                FoodHubCustomTexts.customTextWithUrl(
                  text1: "Already have an account? ",
                  text1Style: FoodHubTextStyles.defualtTextStyle(
                      color: FoodHubColors.white, fontWeight: FontWeight.w400),
                  text2: "Sign in",
                  onTap: () {
                    Navigator.pushNamed(context, '/login screen');
                  },
                  text2Style: FoodHubTextStyles.defualtTextStyle(
                    color: FoodHubColors.white,
                    fontWeight: FontWeight.w400,
                    textUnderline: true,
                  ),
                ), ////! richText with url Button
              ],
            ), // ! body
          ), // ! Welcome Screen
        ),
      ),
    );
  }
}
