import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoveCalculate extends StatefulWidget {
  String yourName, partnerName;
  int number;
  LoveCalculate(
      {Key? key,
      required this.partnerName,
      required this.yourName,
      required this.number})
      : super(key: key);

  @override
  _LoveCalculateState createState() => _LoveCalculateState();
}

class _LoveCalculateState extends State<LoveCalculate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 60,left: 15,right: 15),
          child: Column(
            children: [
          Image.asset(
          'assets/images/relationship.png',
            width: 110,
            height: 110,
          ),
           const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 60),
            child: Text(
              'Love is in the year',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                fontFamily: 'CookieRegular',
              ),
              textAlign: TextAlign.center,

              maxLines: 2,
            ),
          ),

              SizedBox(
                height: 150,
                width: double.infinity,
                child: Stack(
                  //fit: StackFit.,
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Text(
                        widget.yourName,
                        style:
                        const TextStyle(fontSize: 50, fontWeight: FontWeight.bold,color: Colors.pink,
                          fontFamily: 'CookieRegular',

                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/heartcut.png',height: 70,)),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Text(
                        widget.partnerName,
                        style:   const TextStyle(fontSize: 50, fontWeight: FontWeight.bold,color: Colors.pink,
                          fontFamily: 'CookieRegular',
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 50,),
              SizedBox(
                height: 200,
                width: 200,
                child: Stack(
                  children: [
                    Image.asset('assets/images/heart.png',),
                    Align(
                      alignment: Alignment.center,
                      child: Text('${widget.number.toString()}%',style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        fontFamily: 'CookieRegular',
                      ),),
                    ),
                  ],
                ),
              ),
              Text('#${widget.yourName.substring(0,2)}${widget.partnerName.substring(0,2)}'
                ,style: const TextStyle(
                fontSize: 40,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
                  fontFamily: 'CookieRegular',

                ),),
              const SizedBox(height: 50,),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                  Navigator.pop(context);

                  setState(() {});
                },
                child: Container(
                  //padding: const EdgeInsets.all(10.0),
                  height: 50,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.pink,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                        Image.asset('assets/images/heartcalculate.png',height: 30,),
                      const Text('Calculate Again',style: const TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'CookieRegular',
                      ),),
                      Image.asset('assets/images/heartcalculate.png',height: 30,),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
