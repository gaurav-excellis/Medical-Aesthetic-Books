import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';

class HomeScreenCard extends StatelessWidget {
  final String imageUrl, heading, currentPrice, previousPrice;
  const HomeScreenCard({
    super.key,
    required this.imageUrl,
    required this.heading,
    required this.currentPrice,
    required this.previousPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 120.h, bottom: 11.h),
          height: 300.h,
          width: MediaQuery.sizeOf(context).width * 0.45,
          decoration: BoxDecoration(
              color: AppColors.lightBlue,
              borderRadius: BorderRadius.circular(8)),
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                imageUrl,
                fit: BoxFit.contain,
              ),
              Text(
                heading,
                style: AppStyles.subHeading1TextStyle.copyWith(fontSize: 12),
              ),
              Image.asset("Assets/Icon/5star_icon.png"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentPrice,
                    style: AppStyles.normalTextStyle
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    previousPrice,
                    style: AppStyles.normalTextStyle.copyWith(
                      fontSize: 10,
                      color: AppColors.grey,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: AppColors.grey,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(""),
                      SizedBox(
                        height: 20.h,
                      ),
                      Align(
                        child: Container(
                          height: 26.h,
                          width: 26.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: AppColors.green),
                          child: const Icon(
                            Icons.add,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],),
      ],
    );
  }
}
