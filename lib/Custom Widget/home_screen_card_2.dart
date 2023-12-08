import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';

class HomeScreenCard2 extends StatelessWidget {
 final String imageUrl, heading, currentPrice, previousPrice;
  const HomeScreenCard2({
    super.key,
    required this.imageUrl,
    required this.heading,
    required this.currentPrice,
    required this.previousPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(children: [
            Container(
              height: 120.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Container(
              height: 126.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.lightBlue,
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 11.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      heading,
                      style: AppStyles.subHeading1TextStyle
                          .copyWith(fontSize: 12),
                    ),
                    Image.asset("Assets/Icon/5star_icon.png"),
                    Row(
                      crossAxisAlignment:
                          CrossAxisAlignment.center,
                      children: [
                        Text(
                          currentPrice,
                          style: AppStyles.normalTextStyle
                              .copyWith(
                                  fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 8.w,),
                        Text(
                          previousPrice,
                          style:
                              AppStyles.normalTextStyle.copyWith(
                            fontSize: 10,
                            color: AppColors.grey,
                            decoration:
                                TextDecoration.lineThrough,
                            decorationColor: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  
                    SizedBox(height: 10.h,)
                  ],
                ),
              ),
            ),
          ]),
          Image.asset(
            imageUrl,
            height: 196.h,
            width: 130.w,
          ),

          Positioned(
            bottom: 4.h,
            right: 15.w,
            child: Container(
          height: 26.h,
          width: 26.w,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.green),
          child: const Icon(
            Icons.add,
            color: AppColors.white,
          ),
        ),),
        
        ],
      ),
    );
  }
}
