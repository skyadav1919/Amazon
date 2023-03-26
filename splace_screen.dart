import 'dart:async';

import 'package:amazon/bottom_navbar.dart';
import 'package:amazon/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Splace_Screen extends StatefulWidget {
  const Splace_Screen({Key? key}) : super(key: key);

  @override
  State<Splace_Screen> createState() => _Splace_ScreenState();
}

class _Splace_ScreenState extends State<Splace_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login_Page()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),

      body: Center(child: Image.asset('assests/images/img_10.png')),
    );
  }
}
