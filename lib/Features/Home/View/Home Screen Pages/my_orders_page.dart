import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';

import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/my_orders_card_widget.dart';
import 'package:medical_aesthetic_books/Features/Notifications/View/notifications_screen.dart';
import 'package:medical_aesthetic_books/Features/Orders/order_summary_page.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "My Orders",
        trailingWidget: [
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 13.h),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    // width: MediaQuery.sizeOf(context).width * 0.8,
                    height: 46.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        fillColor: Color(0xffEAF0FF),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.activeDotColor, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        prefixIcon: Icon(Icons.search_sharp),
                        hintText: "Search Books",
                        hintStyle: AppStyles.smallTextStyle,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 14.w,
                ),
                Image.asset("Assets/Icon/filter_icon.png"),
                SizedBox(
                  width: 7.w,
                ),
                const Text("Filter", style: AppStyles.smallTextStyle),
              ],
            ),
            SizedBox(
              height: 14.h,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          Get.to(() => OrderSummaryPage());
                        },
                        child: const MyOrdersCardWidget(
                          bookTitle: "Anti-racism book",
                          deliveryStatus: "Arriving soon",
                          deliveryBy: "Dec 14",
                        ),);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
