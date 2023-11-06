import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';

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
          Image.asset(AppIcons.notificationIcon),
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
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.w,
              vertical: 37.h,
            ),
            child: Container(
              height: 94,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.lightBlue,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Column(
                    children: [
                      Text(
                        "Anti-racism book",
                        style: AppStyles.normalTextStyle
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Image.asset(
                        "Assets/Icon/5star_icon.png",
                        width: 40.w,
                        height: 7.h,
                      ),
                      SizedBox(
                        height: 3.5.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$55.00",
                            style: AppStyles.screenHeading2TextStyle
                                .copyWith(fontSize: 14),
                          ),

                          Text(
                            "\$65.00",
                            
                            style: AppStyles.normalTextStyle
                                .copyWith(fontSize: 10, decoration: TextDecoration.lineThrough, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
