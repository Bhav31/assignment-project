import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:settyl/constants/colorconstants.dart';
import 'package:settyl/views/components/globalFunctions.dart';
import 'package:settyl/views/homePage/MyHomePage.dart';
import 'package:sizer/sizer.dart';

import '../../constants/imageconstants.dart';

class otpPage extends StatefulWidget {
  const otpPage({super.key});

  @override
  State<otpPage> createState() => _otpPageState();
}

class _otpPageState extends State<otpPage> {
  final TextEditingController _otpCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sWhite, // its give whole screen background color
      //  <<<<<<APPBAR>>>>>
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
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: sBlack,
                      fontSize: 30.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Enter OTP',
                  style: TextStyle(
                      color: sBlack,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 2.h,
                ),
                PinCodeTextField(
                  appContext: context,
                  textStyle: TextStyle(
                    color: sBlack,
                    fontWeight: FontWeight.w700,
                    fontSize: 19.sp,
                  ),
                  length: 6,
                  obscureText: false,
                  obscuringCharacter: '*',
                  blinkWhenObscuring: true,
                  animationType: AnimationType.fade,
                  validator: (v) {
                    if (v!.length < 6 || v.length == 0) {
                      return "OTP length did't match";
                    } else {
                      return null;
                    }
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    activeColor: sbule,
                    selectedColor: sbule,
                    selectedFillColor: sWhite,
                    inactiveFillColor: sWhite,
                    inactiveColor: sBlack,
                    borderRadius: BorderRadius.circular(12),
                    fieldHeight: 12.w,
                    fieldWidth: 12.w,
                  ),
                  cursorColor: sBlack,
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  controller: _otpCodeController,
                  keyboardType: TextInputType.number,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onTap: () {
                    print("Pressed");
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");

                    return true;
                  },
                ),
                SizedBox(
                  height: 5.h,
                ),
                GestureDetector(
                  onTap: () {
                    Bhanu.navigateTo(context, MyHomePage());
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      // boxShadow: [tBoxShadow],
                      color: sbule,
                      // color: tPrimaryColor
                    ),
                    child: Center(
                      child: Text(
                        "Confirm",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: sWhite),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Center(
                  child: Text(
                    "Please enter the verification code",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: sBlack,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Resend Code",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: sRed,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
