// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Features/Home/View/home_screen.dart';
import 'package:medical_aesthetic_books/Features/Intro%20Screen/View/intro_screen.dart';
import 'package:medical_aesthetic_books/Utils/shared_preference_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenPageState();
  }
}

class _SplashScreenPageState extends State<SplashScreen> {
  String? userToken;
  bool isSeen = false;
  _startNextScreen() {
    Future.delayed(const Duration(milliseconds: 1500), () async {
      var sharedPrep = SharedPref();
      String? token = await sharedPrep.getUserToken();
      if (await sharedPrep.getIsFirstTime() ?? true) {
        Get.off(() => const IntroScreen());
      } else {
        if (token != null) {
          Get.off(() => const HomeScreen());
        } else {
          navigateToIntroScreen();
        }
      }
    });
    // doNavigate(
    //     route: userToken == null
    //         ? isSeen == false
    //             ? IntroScreen()
    //             : LoginScreen()
    //         : DashBoardScreen(),
    //     context: context);
  }

  void navigateToIntroScreen(){
    Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => IntroScreen()));
  }

  // void getUserToken() async {
  //   String? token = await SharedPref().getUserToken();
  //   print("token--. $token");
  //   bool? isIntroSeen = await SharedPref().getisSeen();

  //   print("isSeen-> $isIntroSeen");
  //   setState(() {
  //     userToken = token!;
  //     isSeen = isIntroSeen!;
  //   });
  //   print("jkshdfh=-> $isSeen");
  // }

  @override
  void initState() {
    // getUserToken();
    _startNextScreen();

    
    super.initState();
  }

  // startTime() async {
  //   var duration = const Duration(seconds: 3);
  //   return Timer(duration, _startNextScreen);
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Image.asset(
          AppIcons.appLogo,
          // height: 177.h,
          // width: 242.w,
        ),
      ),
    );
  }
}
