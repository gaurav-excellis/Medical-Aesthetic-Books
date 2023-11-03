import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorfulCategoryCard extends StatelessWidget {
  final Color cardColor, cardTextColor;
  final String title, subtitle;
  const ColorfulCategoryCard(
      {super.key,
      required this.cardColor,
      required this.cardTextColor,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:137.h,
      margin:  EdgeInsets.only(top: 26.h),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4.h),
        height: 107.h,
        padding: EdgeInsets.only(left: 10.w),
        width: double.infinity,
        decoration: BoxDecoration(
          color: cardColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          height: 107.h,
          padding: EdgeInsets.only(left: 10.w),
          width: double.infinity,
          decoration: BoxDecoration(
            color: cardColor.withOpacity(0.6),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            height: 107.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              alignment: const Alignment(-0.8, -4),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 2,
                      child: SizedBox(width: 100.w,)),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(color: cardTextColor, fontSize: 16),
                          ),
                          Text(
                            subtitle,
                            style: TextStyle(color: cardTextColor, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: cardTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
              
                Image.asset("Assets/Images/book3.png", height: 117.h, width: 85.w,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
