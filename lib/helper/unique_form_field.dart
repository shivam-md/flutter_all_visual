import 'package:firebase_project/screens/landingPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_project/helper/shared_preferences.dart';

class UniqueFormField extends StatefulWidget {
  const UniqueFormField({Key? key}) : super(key: key);
  @override
  State<UniqueFormField> createState() => _UniqueFormFieldState();
}

class _UniqueFormFieldState extends State<UniqueFormField> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();
  bool isVisible = true;
  String email = '';
  String password = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    bool userStatus = false;
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'abc@gmail.com',
            // ui element goes up when focussed
            labelText: 'Email',
            filled: true,
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 10),
              //borderRadius: BorderRadius.circular(25),
            ),
            fillColor: Colors.white,
            // focusColor: Colors.white,
            // icon: Icon(Icons.mail),
            prefixIcon: const Icon(Icons.mail),
            suffixIcon: emailController.text.isEmpty
                ? Container(width: 0)
                : IconButton(
                    onPressed: () {
                      emailController.clear();
                    },
                    icon: const Icon(Icons.close),
                  ),
          ),
          controller: emailController,
        ),
        const SizedBox(height: 20,),
        TextField(
          controller: passwordController,
          obscureText: isVisible,
          decoration: InputDecoration(
            hintText: 'Password',
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 10),
              //borderRadius: BorderRadius.circular(25),
            ),
            filled: true,
            fillColor: Colors.white,
            labelText: 'Password',
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: IconButton(
              icon: isVisible
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility),
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
            ),
          ),
        ),
        const SizedBox(height: 20,),
        ElevatedButton(
          onPressed: (){
            userStatus = true;
            print('Email: ${emailController.text}');
            print('Password: ${passwordController.text}');
            UsingSharedPreferences.setName(emailController.text);
            UsingSharedPreferences.setPhoneNo(passwordController.text).then((_) => print('Shared Preferences: ${UsingSharedPreferences.getName()}'));
            UsingSharedPreferences.userLoggedIn(userStatus);

            //usingSharedPreferences().setName(emailController.text);
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LandingPage()));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: Size(width/1.2,height/15),
            foregroundColor: Colors.deepPurple,
            textStyle: const TextStyle(fontSize:20, fontWeight: FontWeight.w900),
          ),
          child: const Text('SUBMIT'),
        )
      ],
    );
  }
}
