import 'package:flutter/material.dart';

class CustomOTPField extends StatefulWidget {
  final int length;
  CustomOTPField({this.length = 6});

  @override
  _CustomOTPFieldState createState() => _CustomOTPFieldState();
}

class _CustomOTPFieldState extends State<CustomOTPField> {
  List<String> _otp = List.filled(6, "");

  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  final TextEditingController _controller5 = TextEditingController();
  final TextEditingController _controller6 = TextEditingController();

  List<TextEditingController> _controllers = [];

  @override
  void initState() {
    _controllers.addAll([
      _controller1,
      _controller2,
      _controller3,
      _controller4,
      _controller5,
      _controller6,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.length,
                (index) => Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: TextField(
                  controller: _controllers[index],
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  onChanged: (value) {
                    _otp[index] = value;
                    if (index < widget.length - 1 && value.isNotEmpty) {
                      FocusScope.of(context).nextFocus();
                    } else if (index == widget.length - 1 && value.isNotEmpty) {
                      FocusScope.of(context).unfocus();
                    }
                  },
                  decoration: InputDecoration(
                    counter: Offstage(),
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String getOTP() {
    return _otp.join();
  }

  void clearOTP() {
    setState(() {
      _otp = List.filled(widget.length, "");
      _controllers.forEach((controller) => controller.clear());
    });
  }
}