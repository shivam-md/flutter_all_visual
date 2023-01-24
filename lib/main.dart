import 'package:firebase_project/helper/notifification_handler.dart';
import 'package:firebase_project/helper/shared_preferences.dart';
// import 'package:firebase_project/screens/landingPage.dart';
// import 'package:firebase_project/screens/loginPage.dart';
import 'package:firebase_project/util/route_layout.dart';
import 'package:flutter/material.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationHandler.setup();
  await UsingSharedPreferences.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List focussedScreen= [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: checkUserStatus(),


    );
  }
}
