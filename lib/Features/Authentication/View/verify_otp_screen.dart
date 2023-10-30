
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Features/Authentication/View/login_screen.dart';
import 'package:medical_aesthetic_books/Features/Authentication/View/reset_password_screen.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});
  static const String heading = "Verify Your Account";
  static const String subHeading1 = "Please enter your verification code";
  static const String subHeading2 =
      "Please enter 5 digit code sent to your email address sm****@*********";
  static const String subHeading3 = "Enter Your Code (00:30)";
  static const String buttonText = "Verify";

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
              child: Image.asset(AppIcons.forgetPasswordIcon
                  // height: 177.h,
                  // width: 242.w,
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
                  reverse: true,
                  child: Column(children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    const Text(
                      heading,
                      style: AppStyles.screenHeadingTextStyle,
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    const Text(subHeading1,
                        style: AppStyles.subHeading1TextStyle),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 9),
                      child: Text(
                        subHeading2,
                        textAlign: TextAlign.center,
                        style: AppStyles.normalTextStyle,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OTPTextField(
                            length: 5,
                            width: MediaQuery.of(context).size.width * 0.5,
                            fieldWidth: MediaQuery.of(context).size.width * 0.1,
                            style: const TextStyle(fontSize: 18),
                            textFieldAlignment: MainAxisAlignment.center,
                            isDense: false,
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            obscureText: true,
                            fieldStyle: FieldStyle.box,
                            otpFieldStyle: OtpFieldStyle(
                              backgroundColor: Color(0xffeaefff),
                            ),
                            // onCompleted: (pin) {
                            //   print("Completed: " + pin);
                            // },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 27.h,
                    ),
                    const Text(
                      subHeading3,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Not Received? ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            "RESEND",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 43.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (newContext) =>
                                const ResetPasswordScreen(),
                          ),
                        );
                      },
                      child: const CustomButton(buttonText: buttonText),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Back to ",
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
                                builder: (newContext) => const LoginScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff2663FF),
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
