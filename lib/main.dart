import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:settyl/constants/imageconstants.dart';
import 'package:settyl/views/signinPage/signInPage.dart';
import 'package:settyl/views/welcomePage/welcome.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnimatedSplashScreen(
          duration: 1000,
          splash: Image.asset(
            IMAGES.logo,
            scale: 2,
          ),
          splashIconSize: 300,
          nextScreen: const WelcomeScreen(),
          // (checkAuth == null || checkAuth == '')
          //     ? OnboardingPage()
          //     : BottomNavigation(),
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.white,
        ),
        // const MyHomePage(title: 'Flutter Demo Home Page'),
      );
    });
  }
}
