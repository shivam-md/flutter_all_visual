import 'package:firebase_project/helper/button_widget.dart';
import 'package:firebase_project/helper/shared_preferences.dart';
import 'package:firebase_project/helper/unique_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = '';
  String phoneNumber = '';
  List<String> interest = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name = UsingSharedPreferences.getName() ?? '';
    phoneNumber = UsingSharedPreferences.getPhoneNo() ?? '';
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    const textStyle = TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w900,
        color: Color(0xFF150050),
        letterSpacing: 3,
        wordSpacing: 5,
        shadows: [
          Shadow(
            offset: Offset(-1.5, 1.5),
            color: Colors.white,
            blurRadius: 6,
          ),
          Shadow(
              offset: Offset(1.5, -1.5),
              color: Colors.white,
            blurRadius: 6,
          ),
          Shadow(
              offset: Offset(-1.5, -1.5),
              color: Colors.white,
            blurRadius: 6,
          ),
          Shadow(
              offset: Offset(1.5, 1.5),
              color: Colors.white,
            blurRadius: 6,
          )
        ]);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: <Widget>[
          SizedBox(height: height/7,),
          Container(alignment: Alignment.topCenter, child: const Text('APPLICATION NAME',style: textStyle)),
          SizedBox(height: height/3,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: UniqueFormField(),
          ),
        ],
      ),
    );
  }
}
