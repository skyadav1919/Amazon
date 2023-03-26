import 'package:amazon/bottom_navbar.dart';
import 'package:amazon/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Otp_Page extends StatefulWidget {
  const Otp_Page({Key? key}) : super(key: key);

  @override
  State<Otp_Page> createState() => _Otp_PageState();
}

class _Otp_PageState extends State<Otp_Page> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    var code = "";
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0,100,0,0),
              child: Image.asset('assests/images/img_11.png'),
            ),
            Center(child: Text('Phone Verification',style: TextStyle(fontSize: 30,),)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Enter OTP',style: TextStyle(fontSize: 15,color: Colors.black45,),),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.fromLTRB(20,30,0,0),
                height: 50,
                width: 250,
                // color: Colors.red,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45,width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField (
                  onChanged: (value){
                    code=value;
                  },
                  maxLength: 6,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    counter: Offstage(),
                      border: InputBorder.none,
                      hintText: 'Enter OTP'
                  ),
                ),
              ),
            ),

            Container(
              height: 45,
              width: MediaQuery.of(context).size.width/2,
              child: OutlinedButton(
                  onPressed: () async{
                   try{
                     PhoneAuthCredential credential = PhoneAuthProvider.credential(
                         verificationId: Login_Page.verify, smsCode: code);
                     // Sign the user in (or link) with the credential
                     await auth.signInWithCredential(credential);
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_Navbar()));
                   }
                   catch(e){
                     print('wrong otp');
                     final snackbar = SnackBar(content: Text('WRONG OTP'));
                     }
                  },
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.white),
                      backgroundColor: Colors.green,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: Text(
                    'Submit OTP',
                    style: TextStyle(fontSize: 15,),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
