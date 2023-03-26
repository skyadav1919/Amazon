import 'package:amazon/main.dart';
import 'package:amazon/otp_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  static String verify="";

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  // TextEditingController countrycode = TextEditingController();
  var phone = "";

  @override
  Widget build(BuildContext context) {
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
              child: Text('we need to register your phone before getting',
                style: TextStyle(fontSize: 15,color: Colors.black45,),),
            ),
            Text('started !',style: TextStyle(fontSize: 15,color: Colors.black45,),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 250,
                // color: Colors.red,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45,width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                   children: [
                      Text('+91'),
                      VerticalDivider(thickness: 1,color: Colors.black,),
                      Container(
                        padding: EdgeInsets.only(top: 21),
                        // color: Colors.blue,
                       width: 190,
                        child: TextField (
                          onChanged: (value){
                            phone=value;
                          },
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counter: Offstage(),
                      border: InputBorder.none,
                          hintText: 'Mobile Number'
                    ),
                  ),
                      ),
                  ],
                  ),
                ),
              ),
            ),

            Container(
              height: 45,
              width: MediaQuery.of(context).size.width/2,
              child: OutlinedButton(
                  onPressed: () async{

                    await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: '${"+91"+phone}',
                      verificationCompleted: (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {
                        Login_Page.verify = verificationId;
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Otp_Page()));
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.white),
                      backgroundColor: Colors.green,
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: Text(
                    'Send OTP',
                    style: TextStyle(fontSize: 15,),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
