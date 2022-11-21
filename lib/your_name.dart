import 'package:flutter/material.dart';
import 'package:love_calculator_stack/partner_name.dart';

import 'love_calculator_widget.dart';


class YourName extends StatefulWidget {
  const YourName({Key? key}) : super(key: key);

  @override
  _YourNameState createState() => _YourNameState();
}

class _YourNameState extends State<YourName> {
  TextEditingController yourNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LoveCalculatorWidget(
              name: 'Your Name',
              nameController: yourNameController,
              onpressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PartnerName(yourName: yourNameController.text),
                  ),
                );
                yourNameController.text = '';
              },
            ),
          ],
        ),
      ),
    );
  }
}
