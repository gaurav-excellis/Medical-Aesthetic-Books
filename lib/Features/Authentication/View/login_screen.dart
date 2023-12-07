
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Controller/auth/auth_controller.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_textfield.dart';
import 'package:medical_aesthetic_books/Features/Authentication/View/forgot_password_screen.dart';
import 'package:medical_aesthetic_books/Features/Authentication/View/register_screen.dart';
import 'package:medical_aesthetic_books/Features/Home/View/home_screen.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  static const screenHeading = "Login";
  static const buttonText = "Login";
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
                  child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(children: [
                      const Text(screenHeading,
                          style: AppStyles.screenHeadingTextStyle),
                      CustomTextField(
                        controller: authController.emailAddressController.value,
                        labelText: "Email ID",
                        textInputType: TextInputType.emailAddress,
                        icon: Image.asset(AppIcons.atTheRateIcon),
                      ),
                      Obx(
                        ()=>
                         CustomTextField(
                          controller: authController.passwordController.value,
                          labelText: "Password",
                          isPassword: authController.isPasswordVisible.value,
                          textInputType: TextInputType.visiblePassword,
                          icon: Image.asset(AppIcons.keyIcon),
                          suffixIcon: InkWell(
                            onTap: () {
                              authController.isPasswordVisible.value = !authController.isPasswordVisible.value;
                            },
                            child:  Icon(
                              authController.isPasswordVisible.value ?  Icons.visibility_off_outlined : Icons.visibility,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (newContext) =>
                                       ForgotPasswordScreen(),
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
                          if(_formKey.currentState!.validate()){
                            authController.validateLoginForm();
                          }
                        },
                        child: Obx(()=> authController.isLoggingIn.value ? const Center(child: CircularProgressIndicator.adaptive(),) : const CustomButton(buttonText: buttonText)),
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
                                  builder: (newContext) =>  RegisterScreen(),
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
            ),
          ],
        ),
      ),
    );
  }
}
