import 'package:firebase_project/helper/unique_form_field.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.buttonName, required this.buttonColor, required this.buttonWidth, this.textColor = const Color(0xFF150050), this.borderColor = Colors.white}) : super(key: key);
  final String buttonName;
  final Color buttonColor;
  final double buttonWidth;
  final Color textColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: (){

        },
        splashColor: Colors.white,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 8),
          width: buttonWidth,
          decoration: BoxDecoration(
            color: buttonColor,
            border: Border.all(color: borderColor, width: 2),
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Text(buttonName, style: TextStyle(color: textColor, fontWeight: FontWeight.w900, fontSize: 20, letterSpacing: 1), ),
        ),
      ),
    );
  }
}
