
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Controller/auth/auth_controller.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_textfield.dart';
import 'package:medical_aesthetic_books/Features/Authentication/View/login_screen.dart';
import 'package:medical_aesthetic_books/Features/Authentication/View/verify_otp_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
   ForgotPasswordScreen({super.key});
  static const String screenHeading = "Forgot Your Password?";
  static const String subHeading1 = "Let’s get you a new one";
  static const String subHeading2 =
      "Please enter your email address. You will receive an OTP to create a new password via e-mail.";
  static const String buttonText = "Send OTP";
  final authController = Get.put(AuthController());
  final _formKey = GlobalKey<FormState>();

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
              child: Image.asset("Assets/Icon/forgot_pass_icon.png"),
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
                  child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      const Text(
                        screenHeading,
                        style: AppStyles.screenHeadingTextStyle,
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      const Text(
                        subHeading1,
                        style: AppStyles.subHeading1TextStyle,
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 9),
                        child: Text(subHeading2,
                            textAlign: TextAlign.center,
                            style: AppStyles.normalTextStyle),
                      ),
                      CustomTextField(
                        controller: authController.emailAddressController.value,
                        labelText: "Email ID",
                        textInputType: TextInputType.emailAddress,
                        icon: Image.asset(AppIcons.atTheRateIcon),
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      InkWell(
                        onTap: ()async {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (newContext) =>
                          //             const VerifyOtpScreen()));
                          if(_formKey.currentState!.validate())  {
                           var res = await authController.forgetPassword();
                           if(res){
                            log(res.toString());
                            await Future.delayed(const Duration(seconds: 1));
                            Get.back();
                           }
                          }
                        },
                        child: Obx(()=> authController.isForgetting.value ? const Center(child: CircularProgressIndicator.adaptive(),) :const CustomButton(buttonText: buttonText)),
                      ),
                      SizedBox(
                        height: 22.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Back to ",
                            style: AppStyles.normalTextStyle,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (newContext) =>  LoginScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Login",
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
            ),
          ],
        ),
      ),
    );
  }
}
