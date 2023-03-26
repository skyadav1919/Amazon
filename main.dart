import 'package:amazon/bottom_navbar.dart';
import 'package:amazon/home.dart';
import 'package:amazon/barcode.dart';
import 'package:amazon/login_page.dart';
import 'package:amazon/slider.dart';
import 'package:amazon/splace_screen.dart';
import 'package:amazon/otp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Bottom_Navbar(),
    );
  }
}

