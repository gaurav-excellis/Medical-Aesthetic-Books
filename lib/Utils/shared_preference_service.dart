import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  setIsFirstTime({required bool isFirstTime}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool('firstTime', isFirstTime);
  }

  getIsFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("firstTime");
  }

  setUserID({required String userID}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('userId', userID);
  }

  getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("userId");
  }

  setUserToken({required String userToken}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("userToken", userToken);
  }

  Future<String?> getUserToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("userToken");
  }

  void deleteAllData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("userId");
    prefs.remove("userToken");
  }
}