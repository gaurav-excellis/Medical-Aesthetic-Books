
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_textfield.dart';
import 'package:medical_aesthetic_books/Features/Authentication/View/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  static const String screenHeading = "Sign up";
  static const String buttonText = "Sign up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5CFBF),
      body: SafeArea(
        bottom: false,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: AppStyles.introScreenContainerDecoration,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(
                  AppIcons.appLogoWhite,
                  // height: 177.h,
                  // width: 242.w,
                ),
              ),
              Expanded(
                flex: 6,
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
                      const Text(screenHeading,
                          style: AppStyles.screenHeadingTextStyle),
                      CustomTextField(
                        labelText: "Email ID",
                        textInputType: TextInputType.emailAddress,
                        icon: Image.asset(AppIcons.atTheRateIcon),
                      ),
                      CustomTextField(
                        labelText: "Full name",
                        icon: Image.asset(AppIcons.personIcon),
                      ),
                      CustomTextField(
                        labelText: "Mobile Number",
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        textInputType: TextInputType.phone,
                        maxLength: 10,
                        icon: Image.asset(AppIcons.phoneIcon),
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
                      CustomTextField(
                        labelText: "Confirm Password",
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
                      SizedBox(
                        height: 49.h,
                      ),
                      RichText(
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.end,
                        textDirection: TextDirection.rtl,
                        softWrap: true,
                        maxLines: 2,
                        textScaleFactor: 1,
                        text: TextSpan(
                          text: 'By signing up, you’re agree to our ',
                          style: AppStyles.smallTextStyle
                              .copyWith(color: AppColors.grey),
                          children: <TextSpan>[
                            const TextSpan(
                              text: 'Terms & Conditions ',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textButtonColor,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            TextSpan(
                              text: 'and ',
                              style: AppStyles.smallTextStyle
                                  .copyWith(color: AppColors.grey),
                            ),
                            const TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.textButtonColor,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const CustomButton(buttonText: buttonText),
                      ),
                      SizedBox(
                        height: 21.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Joined us before? ",
                            style: AppStyles.normalTextStyle,
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
                              "Login Now",
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
      ),
    );
  }
}
