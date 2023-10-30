
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_textfield.dart';
import 'package:medical_aesthetic_books/Features/Home/View/home_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});
  static const String screenHeading = "Reset Password";
  static const String buttonText = "Submit";

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
              child: Image.asset(AppIcons.resetPasswordScreen
                
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
                    SizedBox(height: 20.h,),
                    const Text(
                      screenHeading,
                      style:AppStyles.screenHeadingTextStyle
                    ),
                    SizedBox(height: 35.h,),
                   
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
                      height: 60.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (newContext) =>  HomeScreen()));
                      },
                      child: const CustomButton(buttonText: buttonText),
                    ),

                    SizedBox(height: 22.h,),
                    
                    
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
