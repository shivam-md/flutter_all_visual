
import 'package:shared_preferences/shared_preferences.dart';

class UsingSharedPreferences{
  const UsingSharedPreferences();
  static const String nameTable = 'Name Table';
  static const String phoneTable = 'Phone Table';
  static const String emailTable = 'Email Table';
  static const String tagTable = 'Tag Table';
  static const String userCredentialsSet = 'userCredentials';

  static SharedPreferences? _sharedPreferences;

  static Future init() async{
    _sharedPreferences  = await SharedPreferences.getInstance();
  }

  static Future setName(String name) async{
    await _sharedPreferences?.setString(nameTable, name).then((_) => print('Email Set...'));
  }
  static getName() {
    return _sharedPreferences?.getString(nameTable);
  }

  static Future setPhoneNo(String phone) async{
    await _sharedPreferences?.setString(phoneTable, phone).then((_) => print('Password Set'));
  }
  static getPhoneNo() {
    return _sharedPreferences?.getString(phoneTable);
  }

  static Future setTags(List<String> tags) async{
    await _sharedPreferences?.setStringList(tagTable,tags);
  }
  static getTags() {
   return _sharedPreferences?.getStringList(tagTable);
  }

  static Future userLoggedIn(bool isLogged) async{
    await _sharedPreferences?.setBool(userCredentialsSet, isLogged);
  }
  static checkUserStatus() {
   return _sharedPreferences?.getBool(userCredentialsSet);
  }

}