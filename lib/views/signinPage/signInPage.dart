import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:settyl/constants/colorconstants.dart';
import 'package:settyl/constants/imageconstants.dart';
import 'package:settyl/views/components/globalFunctions.dart';
import 'package:settyl/views/components/textFormFeilds.dart';
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
      body: SingleChildScrollView(
        // singlechildscrollview is used for scrolling the screen
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: sBlack,
                    fontSize: 30.sp,
                  ),
                ),
                SizedBox(
                  height: 15.h,
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
                  //_phoneNumberController,
                  keyboardType: TextInputType.phone,
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: sBlack,
                      fontWeight: FontWeight.w300),
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 0),
                    // prefix: Text('+91 ',style: TextStyle(color: tBlack),),
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
                    fillColor: sGreen,
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
              ],
            ),
          ),
        ),
      ),
      // body: SingleChildScrollView(
      //   // singlechildscrollview is used for scrolling the screen

      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       SizedBox(
      //         height: 11.h,
      //       ),

      //       Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         children: [
      //           SizedBox(height: 2.h),
      //           Text(
      //             'Enter Mobile Number',
      //             style: TextStyle(
      //                 color: sWhite,
      //                 fontSize: 14.sp,
      //                 fontWeight: FontWeight.w700),
      //           ),
      //           SizedBox(
      //             height: 2.h,
      //           ),
      //           Container(
      //             // height: 5.2.h,
      //             child: TextFormField(
      //               validator: (value) {
      //                 if (value!.isEmpty) {
      //                   return "Mobile number can't be empty";
      //                 } else if (value.length != 10 && value.length < 10) {
      //                   return 'Mobile number must be 10 digits';
      //                 } else {
      //                   return null;
      //                 }
      //               },
      //               // controller: _userNameController,
      //               //_phoneNumberController,
      //               keyboardType: TextInputType.phone,
      //               style: TextStyle(
      //                   fontSize: 14.sp,
      //                   color: sWhite,
      //                   fontWeight: FontWeight.w300),
      //               inputFormatters: [LengthLimitingTextInputFormatter(10)],
      //               decoration: InputDecoration(
      //                 contentPadding: EdgeInsets.only(bottom: 0),
      //                 // prefix: Text('+91 ',style: TextStyle(color: tBlack),),
      //                 prefixIcon: Row(
      //                   mainAxisSize: MainAxisSize.min,
      //                   children: [
      //                     Padding(
      //                         padding: EdgeInsets.only(left: 10),
      //                         child: Text("IN",
      //                             style: TextStyle(
      //                                 color: sWhite,
      //                                 fontSize: 15.sp,
      //                                 fontWeight: FontWeight
      //                                     .w300)) // icon is 48px widget.
      //                         ),
      //                     SizedBox(
      //                       width: 5,
      //                     ),
      //                     Text(
      //                       "+91 ",
      //                       style: TextStyle(
      //                           color: sWhite,
      //                           fontSize: 14.sp,
      //                           fontWeight: FontWeight.w300),
      //                     ),
      //                     SizedBox(
      //                       width: 5,
      //                     ),
      //                     // Image.asset(
      //                     //   Images.LOGINLINE,
      //                     //   scale: 4,
      //                     // ),
      //                     SizedBox(
      //                       width: 7,
      //                     ),
      //                     // Icon(Icons.)
      //                   ],
      //                 ),
      //                 hintStyle: TextStyle(
      //                     fontSize: 14.sp,
      //                     color: sWhite,
      //                     fontWeight: FontWeight.w300),
      //                 // hintText: '1234567890',
      //                 fillColor: sBlack,
      //                 filled: true,
      //                 border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.all(
      //                     Radius.circular(10.0),
      //                   ),
      //                 ),
      //                 enabledBorder: OutlineInputBorder(
      //                     borderSide: BorderSide(color: sBlack, width: 1.5),
      //                     borderRadius: BorderRadius.circular(10)),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 30,
      //           ),
      //           GestureDetector(
      //             // onTap: () {
      //             //   if (_formKey.currentState!.validate()) {
      //             //     Twl.navigateTo(context, OtpPage());
      //             //   }
      //             // },
      //             child: Container(
      //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      //               decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(30),
      //                   // boxShadow: [tBoxShadow],
      //                   color: sWhite),
      //               child: Center(
      //                 child: Text(
      //                   "Continue",
      //                   style: TextStyle(
      //                       fontSize: 12.sp,
      //                       fontWeight: FontWeight.w700,
      //                       color: sbule),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 5.h,
      //           ),
      //           Center(
      //             child: Column(
      //               children: [
      //                 Text(
      //                   "Once you hit continue, you'll receive a verification code.",
      //                   style: TextStyle(
      //                     fontSize: 9.sp,
      //                     fontWeight: FontWeight.w400,
      //                     color: sWhite,
      //                   ),
      //                 ),
      //                 Text(
      //                   "The verified number can be used to log in",
      //                   style: TextStyle(
      //                     fontSize: 9.sp,
      //                     fontWeight: FontWeight.w400,
      //                     color: sWhite,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //           SizedBox(
      //             height: 10.h,
      //           ),
      //         ],
      //       ),
      //       // SizedBox(
      //       //   height: 5.h,
      //       // ),
      //     ],
      //   ),
      // ),
    );
  }
}
