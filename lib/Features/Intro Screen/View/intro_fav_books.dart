import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Features/Authentication/View/login_screen.dart';
import 'package:medical_aesthetic_books/Features/Intro%20Screen/Controller/intro_screen_controller.dart';

class IntroFavBooks extends StatelessWidget {
  IntroFavBooks({super.key});

  final introScreenController = Get.put(IntroScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 38.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100.h,),
              const Text(
                "Select Your Favorited Book Categories ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 48.h,
              ),
              Wrap(
                runSpacing: 10,
                spacing: 6,
                children: List.generate(
                    introScreenController.booksCategory.length, (index) {
                  return InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      introScreenController.selectedBookCategoryIndex[index] =
                          !introScreenController
                              .selectedBookCategoryIndex[index];
                    },
                    child: Obx(
                      () => Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 12.h),
                        decoration: BoxDecoration(
                          border: Border.all(color:introScreenController
                                  .selectedBookCategoryIndex[index]
                              ? const Color(0xff09BD26)
                              : AppColors.activeDotColor),
                          borderRadius: BorderRadius.circular(60),
                          color: introScreenController
                                  .selectedBookCategoryIndex[index]
                              ? const Color(0xff09BD26)
                              : const Color(0xffeaefff),
                        ),
                        child: Text(
                          introScreenController.booksCategory[index].toString(),
                          style: TextStyle(
                              color: introScreenController
                                      .selectedBookCategoryIndex[index]
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                  );
                }),
              ),
              const Spacer(),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (newContext) => const LoginScreen(),
                          ),
                        );
                },
                child: const CustomButton(buttonText: "Continue"),),
              SizedBox(
                height: 24.h,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (newContext) => const LoginScreen(),
                          ),
                        );
                },
                child:const  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Skip", style: TextStyle(fontSize: 16,color: AppColors.textButtonColor),),
                    Icon(Icons.arrow_forward_ios_sharp, size: 16, color: AppColors.textButtonColor,)
                  ],
                ),
              ),
              SizedBox(
                height: 46.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
