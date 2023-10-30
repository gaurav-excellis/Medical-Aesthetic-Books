// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Features/Intro%20Screen/View/intro_screen.dart';



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
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => IntroScreen()));

    // doNavigate(
    //     route: userToken == null
    //         ? isSeen == false
    //             ? IntroScreen()
    //             : LoginScreen()
    //         : DashBoardScreen(),
    //     context: context);
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
    startTime();
    super.initState();
  }

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, _startNextScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white),
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
