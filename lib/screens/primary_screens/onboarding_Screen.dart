import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/components/buttons.dart';
import 'package:food_hub/components/custom_shadow.dart';
import 'package:food_hub/main.dart';
import 'package:food_hub/shared/styles/colors.dart';
import 'package:food_hub/shared/styles/texts_styles.dart';
import 'package:simple_shadow/simple_shadow.dart';

class OnboardingScreens extends StatelessWidget {
  static double screenNum = 1;
  static const String screen1Text = "Browse your  menu and order directly";
  static const String screen2Text = "Even to space with us! Together";
  static const String screen3Text = "Pickup delivery at your door";
  String screenText() {
    if (screenNum == 1)
      return (screen1Text);
    else if (screenNum == 2)
      return (screen2Text);
    else if (screenNum == 3)
      return (screen3Text);
    else
      return ("Error");
  }

  const OnboardingScreens({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(35),
        child: Container(
          width: physicalWidth,
          height: physicalHeight,
          child: OnboardingScreens.onboarding(
            dotsCount: 3,
            position: screenNum,
            img: 'onboarding_${screenNum.toInt()}',
            text1: screenText(),
            text2:
                'Our app can send you everywhere, even space. For only \$2.99 per month',
            ButtonOnTap: () {},
          ),
        ),
      ),
    );
  }

  static Widget onboarding({
    required String img,
    required double dotsCount,
    required double position,
    required String text1,
    required String text2,
    required Function()? ButtonOnTap,
  }) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomShadow(
            child: Image.asset(
              "assets/images/$img.png",
            ),
          ),
          Spacer(flex: 5),
          DotsIndicator(
            dotsCount: 3,
            position: position - 1,
            decorator: DotsDecorator(
              color: FoodHubColors.secondaryBorder,
              activeColor: FoodHubColors.secondaryBorder,
              size: Size.square(5),
              activeSize: Size(25, 5),
              spacing: EdgeInsets.symmetric(horizontal: 6),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          Spacer(flex: 1),
          Text(
            textAlign: TextAlign.center,
            text1,
            style: FoodHubTextStyles.defualtTextStyle(
                fontsize: 35,
                color: FoodHubColors.textBlack,
                fontWeight: FontWeight.w400),
          ),
          Spacer(flex: 1),
          Text(
            textAlign: TextAlign.center,
            text2,
            style: FoodHubTextStyles.defualtTextStyle(
                fontsize: 18,
                color: FoodHubColors.subTextColor,
                fontWeight: FontWeight.w400),
          ),
          Spacer(flex: 7),
          CustomShadow(
            child: CustomButtons.CirculIconButton(
              onTap: ButtonOnTap,
              icon: Icon(
                Icons.arrow_forward,
                color: FoodHubColors.iconColor,
                size: 40,
              ),
              iconColor: FoodHubColors.primaryColor,
              height: 67,
              width: 67,
            ),
          ),
        ],
      );
}
