import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:settyl/constants/colorconstants.dart';
import 'package:settyl/constants/imageconstants.dart';
import 'package:settyl/views/components/globalFunctions.dart';
import 'package:settyl/views/components/textFormFeilds.dart';
import 'package:settyl/views/loginPages/loginScreen.dart';
import 'package:settyl/views/signinPage/otpScreen.dart';
import 'package:sizer/sizer.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      "Enter Mobile Number",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: sBlack,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Mobile number can't be empty";
                        } else if (value.length != 10 && value.length < 10) {
                          return 'Mobile number must be 10 digits';
                        } else {
                          return null;
                        }
                      },
                      controller: _phoneNumberController,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: sBlack,
                          fontWeight: FontWeight.w300),
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 0),
                        prefixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text("IN",
                                    style: TextStyle(
                                        color: sBlack,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight
                                            .w300)) // icon is 48px widget.
                                ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "+91 ",
                              style: TextStyle(
                                  color: sBlack,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              width: 5,
                            ),

                            // Icon(Icons.)
                          ],
                        ),
                        hintStyle: TextStyle(
                            fontSize: 14.sp,
                            color: sBlack,
                            fontWeight: FontWeight.w300),
                        // hintText: '1234567890',
                        fillColor: sWhite,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: sBlack, width: 1.5),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Bhanu.navigateTo(context, otpPage());
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            // boxShadow: [tBoxShadow],
                            color: sbule),
                        child: Center(
                          child: Text(
                            "Continue",
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
                        "Once you hit continue, you'll receive a verification code.\nThe verified number can be used to log in",
                        textAlign: TextAlign.center,
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Do you already have an account ? ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: sBlack,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Bhanu.navigateTo(context, LoginScreen());
                      },
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: sbule,
                        ),
                      ),
                    ),
                  ],
                )),
              ],
            )));
  }
}
