import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/address_card_widget.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Features/Notifications/View/notifications_screen.dart';

class ManageAddressScreen extends StatelessWidget {
  const ManageAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "My Addresses",
        leading: const BackButton(),
        trailingWidget: [
          InkWell(
            onTap: () {
              Get.to(()=>  NotificationsScreen(),);
            },
            child: Image.asset(AppIcons.notificationIcon),
          ),
          SizedBox(
            width: 24.w,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 24.h),
        child: Column(children: [
          Text(
            "+ Add new address",
            style: AppStyles.subHeading1TextStyle.copyWith(
              fontSize: 14,
              color: AppColors.green,
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return const MyAddressCardWidget(
                    name: "Adam Smith",
                    addressLabel: "Home",
                    address:
                        "ABCD Apartment 51 Hereford Avenue, Culburra, South Australia Zipcode: 5261",
                  );
                }),
          )
        ]),
      ),
    );
  }
}
