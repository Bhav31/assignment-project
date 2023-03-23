// ignore_for_file: unnecessary_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:settyl/constants/colorconstants.dart';
import 'package:settyl/constants/imageconstants.dart';
import 'package:settyl/views/components/globalFunctions.dart';
import 'package:settyl/views/homePage/MyHomePage.dart';
import 'package:settyl/views/signinPage/signInPage.dart';
import 'package:sizer/sizer.dart';

class skipScreen extends StatefulWidget {
  const skipScreen({super.key});

  @override
  State<skipScreen> createState() => _skipScreenState();
}

class _skipScreenState extends State<skipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sWhite, // its give whole screen background color
      // <<<<<<APPBAR>>>>>
      appBar: AppBar(
        backgroundColor: sWhite, // Appbar background color
        elevation:
            0, // if we don't want to show appbar shadow line,we can make elvation "0"
        leading: GestureDetector(
          onTap: () {
            Bhanu.navigateBack(context);
          },
          child: Image.asset(
            IMAGES.navigateback,
            scale: 4,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical:
                50), // if your screen has padding at all sides we should give it at starting only
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  IMAGES.logo, // image has given
                  scale: 2, // image size
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {
                    Bhanu.navigateTo(context, SignInScreen());
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => SignInScreen()),
                    // );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 85, vertical: 15),
                    decoration: BoxDecoration(
                        color: sOrange,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: sWhite,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                GestureDetector(
                  onTap: () {
                    Bhanu.navigateTo(context, MyHomePage());
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => SignInScreen()),
                    // );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                    decoration: BoxDecoration(
                        color: sbule, borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Continue as guest",
                      style: TextStyle(
                        color: sWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
