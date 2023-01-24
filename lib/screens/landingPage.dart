
import 'package:firebase_project/screens/homePage.dart';
import 'package:firebase_project/screens/notificationPage.dart';
import 'package:firebase_project/screens/profilePage.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  var currentIndex = 1;
  var navBarItemSelected = const [HomePage(),NotificationPage(),ProfilePage()];
  //List screens = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("All About Flutter"),
        backgroundColor: Colors.blueGrey,
      ),
      body: navBarItemSelected[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w700),
        selectedIconTheme: const IconThemeData(size: 30),
        onTap: (index){setState(() {
          currentIndex = index;
        });},
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home', activeIcon: Icon(Icons.home,)),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_active_outlined), label: 'Notification', activeIcon: Icon(Icons.notifications_active,)),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Profile', activeIcon: Icon(Icons.account_circle_rounded,)),
        ],
      ),
    );
  }
}

