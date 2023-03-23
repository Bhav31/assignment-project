// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:settyl/constants/colorconstants.dart';
import 'package:settyl/constants/imageconstants.dart';
import 'package:settyl/views/loginPages/loginScreen.dart';
import 'package:settyl/views/signinPage/signInPage.dart';
import 'package:settyl/views/signinPage/skipScreen.dart';
import 'package:sizer/sizer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sWhite,
      appBar: AppBar(
        backgroundColor: sWhite,
        elevation: 0,
        leading: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Image.asset(
              IMAGES.logo,
            )),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 20,
            ),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: sGreen,
              child: Text("AB"),
            ),
          )
        ],
      ),
      body: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      color: sWhite,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: sbule,
                      indicatorWeight: 3,
                      labelColor: sbule,
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                      unselectedLabelColor: sBlack,
                      unselectedLabelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                      tabs: [
                        Tab(
                          text: "Personal Details",
                        ),
                        Tab(
                          text: "Location",
                        )
                      ])),
              Expanded(
                  child: Container(
                child: TabBarView(
                    children: [Text("jkndkcdfnv"), Text("jkkfjdnvbkbgjn")]),
              ))
            ],
          )),
    );
  }
}
