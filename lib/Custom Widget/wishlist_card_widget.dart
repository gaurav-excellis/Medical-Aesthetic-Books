import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';

class MyWishlistCardWidget extends StatelessWidget {
  final String bookTitle, currentPrice, previousPrice;
  const MyWishlistCardWidget({
    super.key,
    required this.bookTitle,
    required this.currentPrice,
    required this.previousPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 16.h),
      child: Stack(
        alignment: const Alignment(-0.85,2),
        children: [
    
          Container(
            height: 94.h,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookTitle,
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
                          "\$$currentPrice",
                          style: AppStyles.screenHeading2TextStyle
                              .copyWith(fontSize: 14),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          "\$$previousPrice",
                          style: AppStyles.normalTextStyle.copyWith(
                              fontSize: 10,
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Container(
                          width: 126.w,
                          height: 33.h,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(90),
                              bottomLeft: Radius.circular(90),
                            ),
                            color: AppColors.activeDotColor,
                          ),
                          child: Center(
                            child: Text(
                              "Move to Cart",
                              style: AppStyles.normalTextStyle.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
    
          Image.asset("Assets/Images/book3.png", height: 100.h, width: 75.w,),
        
        ],
      ),
    );
  }
}
