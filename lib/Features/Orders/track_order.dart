import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/my_orders_card_widget.dart';
import 'package:medical_aesthetic_books/Features/Notifications/View/notifications_screen.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Track your order",
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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(24.r),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Order ID: D10254699",
                            style: AppStyles.normalTextStyle,
                          ),
                          Text(
                            "June 20, 2021",
                            style: AppStyles.normalTextStyle
                                .copyWith(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        "\$55.00",
                        style: AppStyles.screenHeading2TextStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  const MyOrdersCardWidget(
                      deliveryBy: "Dec 12",
                      bookTitle: "Anti-Racism book",
                      deliveryStatus: "Arriving soon"),
                  SizedBox(
                    height: 12.h,
                  ),
                  Card(
                    elevation: 0.25,
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Track order",
                            style:
                                AppStyles.subHeading1TextStyle.copyWith(fontSize: 16),
                          ),
                          SizedBox(
                            height: 352.h,
                            width: 250.w,
                            child: Theme(
                              data: ThemeData(
                                colorScheme:
                                    const ColorScheme.light(primary: AppColors.green),
                              ),
                              child: Stepper(
                                elevation: 5,
                                connectorThickness: 2,
                                currentStep: 0,
                                controlsBuilder: (context, details) {
                                  return const SizedBox.shrink();
                                },
                                type: StepperType.vertical,
                                steps:  [
                                   Step(
                                    isActive: true,
                                    title: Text("Order Confirmed"),
                                    content: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        StepperCard(
                                          title: "Your Order has been placed.",
                                          subTitle: "Thu, 10th Aug ‘23 - 11:46am",
                                        ),
          
                                        SizedBox(height: 8.h,),
                                        StepperCard(
                                          title: "Seller has processed your order.",
                                          subTitle: "Thu, 10th Aug ‘23 - 12:58pm",
                                        ),
                                        SizedBox(height: 8.h,),
                                        StepperCard(
                                          title:
                                              "Your item has been picked up by courier partner.",
                                          subTitle: "Fri, 11th Aug ‘23 - 9:49am",
                                        ),
                                        SizedBox(height: 8.h,),
                                      ],
                                    ),
                                  ),
                                  Step(
                                    title: Text("Shipped"),
                                    content: Column(
                                      children: [],
                                    ),
                                  ),
                                  Step(
                                    title: Text("Out for Delivery"),
                                    content: Column(
                                      children: [],
                                    ),
                                  ),
                                  Step(
                                    title: Text("Delivered"),
                                    content: Column(
                                      children: [],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                
                  Card(
                    elevation: 0.25,
                    child: Container(
                            height: 187.h,
                            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bill details",
                                  style: AppStyles.subHeading1TextStyle
                                      .copyWith(fontSize: 16.sp),
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Total MRP",
                                      style: AppStyles.normalTextStyle
                                          .copyWith(fontSize: 16.sp),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "\$65.00",
                                      style: AppStyles.normalTextStyle
                                          .copyWith(fontSize: 16.sp),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Discount MRP",
                                      style: AppStyles.normalTextStyle
                                          .copyWith(fontSize: 16.sp),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "\$-10.00",
                                      style: AppStyles.normalTextStyle
                                          .copyWith(fontSize: 16.sp),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Delivery Charges",
                                      style: AppStyles.normalTextStyle
                                          .copyWith(fontSize: 16.sp),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "\$3.00",
                                      style: AppStyles.normalTextStyle
                                          .copyWith(fontSize: 16.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Grand Total",
                                      style: AppStyles.normalTextStyle.copyWith(
                                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                                    ),
                                    const Spacer(),
                                    Text(
                                      "\$68.00",
                                      style: AppStyles.normalTextStyle.copyWith(
                                          fontSize: 16.sp, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                  ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Card(
                          elevation: 0.25,
                          child: Container(
                            // height: 296.h,
                            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Order details",
                                  style: AppStyles.subHeading1TextStyle
                                      .copyWith(fontSize: 16.sp),
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Image.asset("Assets/Icon/payment_icon.png"),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Payment mode",
                                            style: AppStyles.screenHeading2TextStyle
                                                .copyWith(fontSize: 14.sp),
                                          ),
                                          Text(
                                            "Cash",
                                            style: AppStyles.normalTextStyle
                                                .copyWith(fontSize: 12.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Image.asset("Assets/Icon/calendar_icon.png"),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Date",
                                            style: AppStyles.screenHeading2TextStyle
                                                .copyWith(fontSize: 14.sp),
                                          ),
                                          Text(
                                            "August 02, 2024",
                                            style: AppStyles.normalTextStyle
                                                .copyWith(fontSize: 12.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Image.asset("Assets/Icon/address_icon.png"),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Deliver to Home",
                                            style: AppStyles.screenHeading2TextStyle
                                                .copyWith(fontSize: 14.sp),
                                          ),
                                          Text(
                                            "Adam Smith",
                                            style: AppStyles.screenHeading2TextStyle
                                                .copyWith(fontSize: 14.sp),
                                          ),
                                          Text(
                                            "ABCD Apartment, 51 Hereford Avenue, Culburra, South Australia Zipcode: 5261",
                                            style: AppStyles.normalTextStyle
                                                .copyWith(fontSize: 12.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                  ],
              ),
            ),
          ),
        
          Container(
              height: 138.h,
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90.w),
                ),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 25,
                    color: Colors.grey,
                  ),
                ],
              ),
              child: InkWell(
                onTap: () {},
                child:  Center(
                  child: CustomButton(
                    buttonText: "Cancel Order",
                    height: 54.h,
                    width: double.maxFinite,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class StepperCard extends StatelessWidget {
  final String title, subTitle;
  const StepperCard({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.normalTextStyle.copyWith(fontSize: 10),
        ),
        Text(
          subTitle,
          style: AppStyles.normalTextStyle
              .copyWith(fontSize: 10, color: Colors.grey),
        )
      ],
    );
  }
}
