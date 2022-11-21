import 'dart:async';

import 'package:flutter/material.dart';
import 'package:love_calculator_stack/your_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => YourName()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text('Love Calculator',style: TextStyle(fontSize: 60,
            fontFamily: 'CookieRegular',
          ),),
        ),
      ),
    );

  }
}
