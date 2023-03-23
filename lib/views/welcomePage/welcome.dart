// ignore_for_file: unnecessary_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:settyl/constants/colorconstants.dart';
import 'package:settyl/constants/imageconstants.dart';
import 'package:settyl/views/components/globalFunctions.dart';
import 'package:settyl/views/signinPage/signInPage.dart';
import 'package:settyl/views/signinPage/skipScreen.dart';
import 'package:sizer/sizer.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sWhite, // its give whole screen background color
      // <<<<<<APPBAR>>>>>
      appBar: AppBar(
        backgroundColor: sWhite, // Appbar background color
        elevation:
            0, // if we don't want to show appbar shadow line,we can make elvation "0"
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical:
                50), // if your screen has padding at all sides we should give it at starting only
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Image.asset(
                  IMAGES.logo, // image has given
                  scale: 2, // image size
                ),
                Image.asset(IMAGES.welcome),
              ],
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Bhanu.navigateTo(context, skipScreen());
                    },
                    child:
                        //  Container(
                        //   padding: const EdgeInsets.symmetric(
                        //       horizontal: 15, vertical: 10),
                        //   decoration: BoxDecoration(
                        //       color: sGreen, borderRadius: BorderRadius.circular(10)),
                        //   child:
                        Text(
                      "SKIP",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Bhanu.navigateTo(context, SignInScreen());
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SignInScreen()),
                      // );
                    },
                    child:
                        // Container(
                        //   padding: const EdgeInsets.symmetric(
                        //       horizontal: 10, vertical: 10),
                        //   decoration: BoxDecoration(
                        //       color: sGreen,
                        //       borderRadius: BorderRadius.circular(10)),
                        //   child:
                        Text(
                      "NEXT",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                    // ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
