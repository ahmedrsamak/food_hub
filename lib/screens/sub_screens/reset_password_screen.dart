import 'package:flutter/material.dart';
import 'package:food_hub/components/texts.dart';

import '../../components/buttons.dart';
import '../../components/custom_shadow.dart';
import '../../components/textFormField.dart';
import '../../shared/styles/colors.dart';
import '../../shared/styles/texts_styles.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

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
        padding: EdgeInsets.symmetric(horizontal: 26),
        child: ListView(
          children: [
            Text(
              "Resset Password",
              style: FoodHubTextStyles.defualtTextStyle(
                  fontsize: 36, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 12),
            Text(
              "Please enter your email address to request a password reset",
              style: FoodHubTextStyles.defualtTextStyle(
                  fontsize: 14, color: FoodHubColors.lightGreyColor),
            ),
            SizedBox(height: 31),
            FoodHubTextFormField.customTextFormField(
                textStyle: FoodHubTextStyles.defualtTextStyle(
                    fontsize: 18,
                    fontWeight: FontWeight.w400,
                    color: FoodHubColors.primaryColor),
                textInputType: TextInputType.number,
                cursorColor: FoodHubColors.secondaryColor,
                controller: TextEditingController()),
            SizedBox(height: 51),
            Align(
              alignment: Alignment.center,
              child: CustomShadow(
                color: FoodHubColors.primaryColor,
                child: FoodHubCustomButtons.textOnlyButton(
                  width: 248,
                  height: 60,
                  buttonColor: FoodHubColors.primaryColor,
                  textStyle: FoodHubTextStyles.defualtTextStyle(
                    color: FoodHubColors.white,
                    fontWeight: FontWeight.w600,
                    fontsize: 15,
                  ),
                  text: "SEND NEW PASSWORD",
                  onTap: () {}, //TODO add On Tap Function
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
