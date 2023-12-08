import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/wishlist_card_widget.dart';
import 'package:medical_aesthetic_books/Features/Notifications/View/notifications_screen.dart';

class MyWishlistPage extends StatelessWidget {
  const MyWishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: Colors.white,
        title: "My Wishlist",
        trailingWidget: [
          Image.asset(AppIcons.searchIcon),
          SizedBox(
            width: 18.w,
          ),
          InkWell(
            onTap: (){
              Get.to(() => NotificationsScreen());
            },
            child: Image.asset(AppIcons.notificationIcon)),
          SizedBox(
            width: 25.w,
          ),
        ],
      ),
      body: Column(
        children: [
          Divider(
            thickness: 9.h,
            color: Colors.grey.shade100,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                //vertical: 37.h,
              ),
              child: ListView.builder(
                itemCount: 4,
                itemBuilder:(context, index){
                return const MyWishlistCardWidget(bookTitle: "Anti-Racism book", currentPrice: "45.00", previousPrice: "55.00");
              }),
            ),
          ),
        ],
      ),
    );
  }
}

