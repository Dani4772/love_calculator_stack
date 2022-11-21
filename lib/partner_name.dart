import 'dart:math';

import 'package:flutter/material.dart';

import 'love_calculate.dart';
import 'love_calculator_widget.dart';

class PartnerName extends StatefulWidget {
  String yourName;
   PartnerName({Key? key,required this.yourName}) : super(key: key);

  @override
  _PartnerNameState createState() => _PartnerNameState();
}

class _PartnerNameState extends State<PartnerName> {
  var partnerNameController=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  int i=0;
  void  generateRandomNumber() {
    var random = new Random();
    i=random.nextInt(100);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoveCalculatorWidget(name: 'Partner Name',nameController: partnerNameController,onpressed: (){

              generateRandomNumber();
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  LoveCalculate(yourName: widget.yourName,partnerName: partnerNameController.text,number: i,)));
            }),

          ],
        ),
      ),
    );
  }
}
