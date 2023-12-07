import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Features/About%20Us/View/about_us_screen.dart';
import 'package:medical_aesthetic_books/Features/Address/View/manage_address_screen.dart';
import 'package:medical_aesthetic_books/Features/Home/Controller/my_drawer_controller.dart';
import 'package:medical_aesthetic_books/Features/Notifications/View/notifications_screen.dart';
import 'package:medical_aesthetic_books/Features/Orders/track_order.dart';
import 'package:medical_aesthetic_books/Features/Splash%20Screen/splash_screen.dart';
import 'package:medical_aesthetic_books/Utils/shared_preference_service.dart';

class DrawerMenuScreen extends GetView<MyDrawerController> {
  const DrawerMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.activeDotColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hey Kumari!",
                style: AppStyles.screenHeadingTextStyle
                    .copyWith(color: Colors.white),
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur. ",
                style: AppStyles.normalTextStyle
                    .copyWith(fontWeight: FontWeight.w300, color: Colors.white),
              ),
              SizedBox(
                height: 16.h,
              ),
              const Divider(
                thickness: 0.5,
                color: Colors.white,
              ),
              SizedBox(
                height: 50.h,
              ),
              Text(
                "YOUR INFORMATION",
                style: AppStyles.normalTextStyle
                    .copyWith(color: Colors.white70, letterSpacing: 2),
              ),
              MyDrawerItems(
                title: "Track Your Order",
                onTap: () {
                  controller.toggleDrawer();
                  Get.to(() => const TrackOrder());
                },
                iconUrl: "Assets/Icon/drawer_track_order.png",
              ),
              MyDrawerItems(
                title: "Help Support",
                onTap: () {
                  controller.toggleDrawer();
                },
                iconUrl: "Assets/Icon/drawer_support.png",
              ),
              MyDrawerItems(
                title: "Address",
                onTap: () {
                  Get.to(
                    () => const ManageAddressScreen(),
                  );
                  controller.toggleDrawer();
                },
                iconUrl: "Assets/Icon/drawer_address.png",
              ),
              MyDrawerItems(
                title: "Payment Methods",
                onTap: () {
                  controller.toggleDrawer();
                },
                iconUrl: "Assets/Icon/drawer_payment.png",
              ),
              SizedBox(
                height: 37.h,
              ),
              Text(
                "OTHER INFORMATION",
                style: AppStyles.normalTextStyle
                    .copyWith(color: Colors.white70, letterSpacing: 2),
              ),
              MyDrawerItems(
                title: "Share The App",
                onTap: () {
                  controller.toggleDrawer();
                },
                iconUrl: "Assets/Icon/drawer_share.png",
              ),
              MyDrawerItems(
                title: "About Us",
                onTap: () {
                  controller.toggleDrawer();
                  Get.to(
                    () => const AboutUsScreen(),
                  );
                },
                iconUrl: "Assets/Icon/drawer_about_us.png",
              ),
              MyDrawerItems(
                title: "Rate Us",
                onTap: () {},
                iconUrl: "Assets/Icon/drawer_rate.png",
              ),
              MyDrawerItems(
                title: "Notification",
                onTap: () {
                  controller.toggleDrawer();
                  Get.to(
                    () => NotificationsScreen(),
                  );
                },
                iconUrl: "Assets/Icon/drawer_notification.png",
              ),
              MyDrawerItems(
                title: "Logout",
                onTap: () {
                  log("logout pressed");
                  controller.toggleDrawer();
                  SharedPref().deleteAllData();
                  Get.off(() => const SplashScreen());
                },
                iconUrl: "Assets/Icon/drawer_logout.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDrawerItems extends StatelessWidget {
  final VoidCallback onTap;
  final String title, iconUrl;
  const MyDrawerItems({
    required this.title,
    required this.onTap,
    required this.iconUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Image.asset(iconUrl),
      title: Text(
        title,
        style: AppStyles.normalTextStyle
            .copyWith(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
