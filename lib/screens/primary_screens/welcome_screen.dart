import 'package:flutter/material.dart';
import 'package:food_hub/components/buttons.dart';
import 'package:food_hub/shared/styles/colors.dart';
import 'package:food_hub/shared/styles/texts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/welcome_screen_background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 27.5, top: 30),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: CustomButtons.textOnlyButton(
                        width: 55,
                        height: 32,
                        buttonColor: FoodHubColors.white,
                        text: "Skip",
                        textStyle: FoodHubTextStyles.defualtTextStyle(
                            color: FoodHubColors.primaryColor),
                        onTap: () {}), //TODO (1 welcome_screen skip button)
                  ),
                ),
                SizedBox(height: 120),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
