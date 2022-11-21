import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoveCalculatorWidget extends StatefulWidget {
  String name;
  var nameController = TextEditingController();
  VoidCallback onpressed;
  LoveCalculatorWidget({Key? key,required this.name,required this.nameController,required this.onpressed}) : super(key: key);

  @override
  State<LoveCalculatorWidget> createState() => _LoveCalculatorWidgetState();
}

class _LoveCalculatorWidgetState extends State<LoveCalculatorWidget> {

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 180,left: 10),
                decoration: const BoxDecoration(
                    color: Color(0XFFfbd2d7),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(170, 170),
                    )

                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 180,left: 10),
                decoration: const BoxDecoration(
                    color: Color(0XFFff9eb4),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(250, 250),
                    )

                ),
              ),
              Container(
                height: 300,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 180,left: 10),
                decoration: const BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.elliptical(360, 300),
                    )

                ),
                child:  Text('Love Calculator',style:  TextStyle(
                  color: Colors.white,
                  fontSize: 50,fontWeight: FontWeight.bold,
                  fontFamily: 'CookieRegular',
                ),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30,bottom: 60),
                  child: Image.asset('assets/images/relationship.png',width: 110,height: 110,),
                ),
                 TextFormField(

                  autocorrect: true,
                  style: TextStyle(color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'CookieRegular',

                  ),
                  controller: widget.nameController,
                  decoration: InputDecoration(
                    hintText: widget.name,
                    hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                      fontFamily: 'CookieRegular',
                      fontSize: 25
                    ),
                    filled: true,
                    fillColor: Colors.pinkAccent,
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                   validator: (value) {
                     if (value == null || value.isEmpty) {
                       return 'Please enter the name';
                     }
                     return null;
                   },
                ),
                InkWell(
                    onTap: (){
                      if (formKey.currentState!.validate()) {
                       widget.onpressed();
                      }
                    },
                    child:  Padding(
                      padding: const EdgeInsets.only(top: 60,bottom: 60),
                      child: Image.asset('assets/images/heartbutton.png',width: 110,height: 110,),
                    )),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
