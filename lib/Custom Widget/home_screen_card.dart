
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
      children: [
        Container(
          height: 205.h,
          width: MediaQuery.sizeOf(context).width * 0.4,
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
            image:  DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 11, bottom: 10),
            child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.end,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: AppStyles
                        .subHeading1TextStyle
                        .copyWith(fontSize: 12),
                  ),
                  Image.asset(
                      "Assets/Icon/5star_icon.png"),
                  Row(
                    children: [
                      Text(
                        currentPrice,
                        style: AppStyles.normalTextStyle
                            .copyWith(
                                fontWeight:
                                    FontWeight.w600),
                      ),
                      Text(
                        previousPrice,
                        style: AppStyles.normalTextStyle
                            .copyWith(
                          fontSize: 10,
                          color: AppColors.grey,
                          decoration: TextDecoration
                              .lineThrough,
                          decorationColor:
                              AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
        Positioned(
            right: 20.w,
            bottom: 10.h,
            child: Container(
              height: 26.h,
              width: 26.w,
              decoration:const  BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.green),
              child:const Icon(
                Icons.add,
                color: AppColors.white,
              ),
            ))
      ],
    );
  }
}
