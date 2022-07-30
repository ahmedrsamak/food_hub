import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_hub/screens/primary_screens/home_screen.dart';
import 'package:food_hub/screens/primary_screens/onboarding_Screen.dart';
import 'package:food_hub/screens/primary_screens/splash_screen.dart';
import 'package:food_hub/screens/primary_screens/welcome_screen.dart';
import 'package:food_hub/screens/sub_screens/login_screen.dart';
import 'package:food_hub/screens/sub_screens/phone_registration_screen.dart';
import 'package:food_hub/screens/sub_screens/reset_password_screen.dart';
import 'package:food_hub/screens/sub_screens/sign_up_screen.dart';
import 'package:food_hub/screens/sub_screens/verification_code_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FOOD HUB',
      routes: {
        '/': (context) => SplashScreen(),
        '/welcome screen': (context) => WelcomeScreen(),
        '/on boarding screen': (context) => OnboardingScreens(),
        '/sign up screen': (context) => SignUpScreen(),
        '/login screen': (context) => LogInScreen(),
        '/verification screen': (context) => VerificationCodeScreen(),
        '/reset password screen': (context) => ResetPasswordScreen(),
        '/phone registration screen': (context) => PhoneRegistrationScreen(),
        '/home screen': (context) => HomeScreen(),
      },
      initialRoute: '/',
    );
  }
}
