import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_hub/screens/primary_screens/onboarding_Screen.dart';
import 'package:food_hub/screens/primary_screens/splash_screen.dart';
import 'package:food_hub/screens/primary_screens/welcome_screen.dart';
import 'package:food_hub/shared/styles/colors.dart';

var physicalScreenSize = window.physicalSize;
var physicalWidth = physicalScreenSize.width;
var physicalHeight = physicalScreenSize.height;
void main() {
  print("width: $physicalWidth\nhieght: $physicalHeight ");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SafeArea(
        child: OnboardingScreens(),
      ),
    );
  }
}
