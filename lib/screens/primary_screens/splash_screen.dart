import 'package:flutter/material.dart';
import 'package:food_hub/shared/styles/colors.dart';
import 'package:food_hub/shared/styles/texts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FoodHubColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
                ),
                Container(
                  child: Image.asset("assets/images/logo.png"),
                ),
              ],
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(text: 'Food', style: FoodHubTextStyles.splashText1),
                  TextSpan(text: "Hub", style: FoodHubTextStyles.splashText2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
