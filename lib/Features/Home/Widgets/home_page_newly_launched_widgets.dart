import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';

class HomePageNewlyLaunchedCard extends StatelessWidget {
  const HomePageNewlyLaunchedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 109.h,
      alignment: Alignment.bottomCenter,
      child: Stack(
        alignment: const Alignment(-0.8,1.9),
        children: [
          
          Container(
            height: 89.h,
            padding: const EdgeInsets.symmetric(horizontal: 21),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                
                SizedBox(
                  width: 100.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Anti-racism book",
                      style: AppStyles.subHeading1TextStyle
                          .copyWith(fontSize: 14),
                    ),
                    Image.asset(
                      "Assets/Icon/5star_icon.png",
                      fit: BoxFit.contain,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$55.00",
                          style: AppStyles.normalTextStyle.copyWith(
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$65.00",
                          style: AppStyles.normalTextStyle.copyWith(
                            fontSize: 10,
                            color: AppColors.grey,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 26.h,
                  width: 26.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.green),
                  child: const Icon(
                    Icons.add,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.asset("Assets/Images/book3.png", width: 80.w,),
        ],
      ),
    );
  }
}