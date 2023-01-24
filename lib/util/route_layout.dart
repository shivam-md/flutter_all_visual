

import 'package:firebase_project/helper/shared_preferences.dart';
import 'package:firebase_project/screens/landingPage.dart';
import 'package:firebase_project/screens/loginPage.dart';

dynamic checkUserStatus(){
    bool status = UsingSharedPreferences.checkUserStatus() == null ? true : false;
    if(status){
      return const LandingPage();
    }else{
      return const LoginPage();
    }
}