import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/my_orders_card_widget.dart';

class OrderSummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      appBar: const CustomAppBar(
        title: "Order Summary",
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 24.w),
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
                            style: AppStyles.normalTextStyle.copyWith(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        "\$55.00",
                        style: AppStyles.screenHeading2TextStyle
                            .copyWith(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  const MyOrdersCardWidget(
                    bookTitle: "Anti-racism book",
                    deliveryStatus: "Arriving soon",
                    deliveryBy: "Dec 14",
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
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
                  SizedBox(
                    height: 13.h,
                  ),
                  Container(
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
                  SizedBox(
                    height: 15.h,
                  ),
                ],
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
                    buttonText: "Return",
                    height: 54.h,
                    width: double.maxFinite,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
