import 'package:flutter/material.dart';
import 'package:food_hub/shared/styles/colors.dart';
import 'package:food_hub/shared/styles/texts.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FoodHubColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.jpg"),
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
