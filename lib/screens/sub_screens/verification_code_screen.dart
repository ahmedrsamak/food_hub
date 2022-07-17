import 'package:flutter/material.dart';
import 'package:food_hub/components/texts.dart';

import '../../components/buttons.dart';
import '../../components/custom_shadow.dart';
import '../../components/textFormField.dart';
import '../../shared/styles/colors.dart';
import '../../shared/styles/texts_styles.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String mail = "prelookstudio@gmail.com";
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
              "Vefification Code",
              style: FoodHubTextStyles.defualtTextStyle(
                  fontsize: 36, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 12),
            Text(
              "Please type the verification code sent to\n$mail", // TODO replace mail with mail wrriten in past form
              style: FoodHubTextStyles.defualtTextStyle(
                  fontsize: 14, color: FoodHubColors.lightGreyColor),
            ),
            SizedBox(height: 31),
            Row(
              children: [
                SizedBox(
                  width: 65,
                  height: 65,
                  child: FoodHubTextFormField.customTextFormField(
                      textStyle: FoodHubTextStyles.defualtTextStyle(
                          fontsize: 27.2,
                          fontWeight: FontWeight.w400,
                          color: FoodHubColors.primaryColor),
                      textInputType: TextInputType.number,
                      cursorColor: FoodHubColors.secondaryColor,
                      controller: TextEditingController()),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 65,
                  height: 65,
                  child: FoodHubTextFormField.customTextFormField(
                      textStyle: FoodHubTextStyles.defualtTextStyle(
                          fontsize: 27.2,
                          fontWeight: FontWeight.w400,
                          color: FoodHubColors.primaryColor),
                      textInputType: TextInputType.number,
                      cursorColor: FoodHubColors.secondaryColor,
                      controller: TextEditingController()),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 65,
                  height: 65,
                  child: FoodHubTextFormField.customTextFormField(
                      textStyle: FoodHubTextStyles.defualtTextStyle(
                          fontsize: 27.2,
                          fontWeight: FontWeight.w400,
                          color: FoodHubColors.primaryColor),
                      textInputType: TextInputType.number,
                      cursorColor: FoodHubColors.secondaryColor,
                      controller: TextEditingController()),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 65,
                  height: 65,
                  child: FoodHubTextFormField.customTextFormField(
                      textStyle: FoodHubTextStyles.defualtTextStyle(
                          fontsize: 27.2,
                          fontWeight: FontWeight.w400,
                          color: FoodHubColors.primaryColor),
                      textInputType: TextInputType.number,
                      cursorColor: FoodHubColors.secondaryColor,
                      controller: TextEditingController()),
                ),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 32),
            Align(
              alignment: Alignment.center,
              child: FoodHubCustomTexts.customTextWithUrl(
                  text1: "I don’t recevie a code! ",
                  text2: "Please resend",
                  text1Style: FoodHubTextStyles.defualtTextStyle(
                      color: FoodHubColors.textBlack,
                      fontsize: 16,
                      fontWeight: FontWeight.w500),
                  text2Style: FoodHubTextStyles.defualtTextStyle(
                      fontsize: 16,
                      fontWeight: FontWeight.w500,
                      color: FoodHubColors.primaryColor)),
            )
          ],
        ),
      ),
    );
  }
}
