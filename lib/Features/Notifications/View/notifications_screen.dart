import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key}) : super(key: key);
  final List<Color> cardColorList = [
    AppColors.notificationCardColor1,
    AppColors.notificationCardColor2,
    AppColors.notificationCardColor3,
    AppColors.notificationCardColor4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leading: BackButton(),
        title: "Notifications",
      ),
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 9,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                            left: 15, top: 12, right: 16, bottom: 18),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: cardColorList[index % 4]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lorem ipsum dolor sit amet consectetur.",
                              style: AppStyles.subHeading1TextStyle
                                  .copyWith(fontSize: 16.sp),
                            ),
                            SizedBox(height: 8.h,),
                            Text(
                              "Lorem ipsum dolor sit amet consectetur. Amet lobortis porttitor vitae aliquet eu. Tortor leo fringilla leo enim tempus morbi nunc. Amet consequat felis ultricies morbi turpis fringilla. Euismod gravida convallis vulputate in. ",
                              style: AppStyles.normalTextStyle
                                  .copyWith(fontSize: 12.sp),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "06.10.23",
                            style: TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "|",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "06:00 PM",
                            style: TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
