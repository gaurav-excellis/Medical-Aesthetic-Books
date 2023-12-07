
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_textfield.dart';
import 'package:medical_aesthetic_books/Features/Authentication/View/forgot_password_screen.dart';
import 'package:medical_aesthetic_books/Features/Authentication/View/register_screen.dart';
import 'package:medical_aesthetic_books/Features/Home/View/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const screenHeading = "Login";
  static const buttonText = "Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: AppStyles.introScreenContainerDecoration,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset(
                AppIcons.appLogoWhite,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(25.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(81.h),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(children: [
                    const Text(screenHeading,
                        style: AppStyles.screenHeadingTextStyle),
                    CustomTextField(
                      labelText: "Email ID",
                      textInputType: TextInputType.emailAddress,
                      icon: Image.asset(AppIcons.atTheRateIcon),
                    ),
                    CustomTextField(
                      labelText: "Password",
                      isPassword: true,
                      textInputType: TextInputType.visiblePassword,
                      icon: Image.asset(AppIcons.keyIcon),
                      suffixIcon: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.visibility_off_outlined,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (newContext) =>
                                    const ForgotPasswordScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: AppColors.textButtonColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 34.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>const HomeScreen()));
                      },
                      child: const CustomButton(buttonText: buttonText),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    const Text(
                      "OR",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Image.asset("Assets/Icon/social_media.png"),
                    SizedBox(
                      height: 21.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "New User? ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (newContext) => const RegisterScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Register Now",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.textButtonColor,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
