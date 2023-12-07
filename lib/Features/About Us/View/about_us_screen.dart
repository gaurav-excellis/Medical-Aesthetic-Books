import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';

import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Features/Notifications/View/notifications_screen.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "About Us",
        leading: const BackButton(),
        trailingWidget: [
          InkWell(
            onTap: () {
              Get.to(
                () =>  NotificationsScreen(),
              );
            },
            child: Image.asset(AppIcons.notificationIcon),
          ),
          SizedBox(
            width: 24.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 19.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset("Assets/Images/about_us.png")),
            SizedBox(
              height: 16.h,
            ),
            const Text("About our company",
                style: AppStyles.screenHeading2TextStyle),
            SizedBox(
              height: 16.h,
            ),
            const Text(
              "Lorem ipsum dolor sit amet consectetur. Rhoncus amet quis urna nulla tortor. Erat nunc quam purus quam posuere dui tortor. Eu tincidunt lacus quam ac nunc sit dignissim neque mattis. Vel in nulla nisl curabitur ullamcorper. Eget amet faucibus volutpat ultrices purus pulvinar.",
              style: AppStyles.normalTextStyle,
            ),
            SizedBox(
              height: 15.h,
            ),
            const Text(
              "Vel in nulla nisl curabitur ullamcorper. Eget amet faucibus volutpat ultrices purus pulvinar.",
              style: AppStyles.normalTextStyle,
            ),
            SizedBox(
              height: 15.h,
            ),
            const Text(
              "Lorem ipsum dolor sit amet consectetur. Rhoncus amet quis urna nulla tortor. Erat nunc quam purus quam posuere dui tortor. Eu tincidunt lacus quam ac nunc sit dignissim neque mattis. Vel in nulla nisl curabitur ullamcorper. Eget amet faucibus volutpat ultrices purus pulvinar.",
              style: AppStyles.normalTextStyle,
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.activeDotColor),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "Assets/Icon/our_mission_icon.png",
                        height: 36.h,
                        width: 36.w,
                      ),
                       SizedBox(width: 6.w,),
                      Text(
                        "Our Mission",
                        style: AppStyles.subHeading1TextStyle
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur. Rhoncus amet quis urna nulla tortor. Erat nunc quam purus quam posuere dui tortor. Eu tincidunt lacus quam ac nunc sit dignissim neque mattis. Vel in nulla nisl curabitur ullamcorper. Eget amet faucibus volutpat ultrices purus pulvinar.",
                    style:
                        AppStyles.normalTextStyle.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.green),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "Assets/Icon/our_vision_icon.png",
                        height: 36.h,
                        width: 36.w,
                      ),
                      SizedBox(width: 6.w,),
                      Text(
                        "Our Vision",
                        style: AppStyles.subHeading1TextStyle
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur. Rhoncus amet quis urna nulla tortor. Erat nunc quam purus quam posuere dui tortor. Eu tincidunt lacus quam ac nunc sit dignissim neque mattis. Vel in nulla nisl curabitur ullamcorper. Eget amet faucibus volutpat ultrices purus pulvinar.",
                    style:
                        AppStyles.normalTextStyle.copyWith(color: Colors.white),
                  ),

                  
                ],
              ),
            ),

            SizedBox(height: 20.h,),

                  const Text(
            "Lorem ipsum dolor sit amet consectetur. Rhoncus amet quis urna nulla tortor. Erat nunc quam purus quam posuere dui tortor. Eu tincidunt lacus quam ac nunc sit dignissim neque mattis. Vel in nulla nisl curabitur ullamcorper. Eget amet faucibus volutpat ultrices purus pulvinar.",
            style: AppStyles.normalTextStyle,
        ),
          ],
        ),
      ),
    );
  }
}
