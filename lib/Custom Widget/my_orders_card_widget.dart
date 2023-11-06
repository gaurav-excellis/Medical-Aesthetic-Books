import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';

class MyOrdersCardWidget extends StatelessWidget {
  final String deliveryBy, bookTitle, deliveryStatus;
  const MyOrdersCardWidget({
    super.key,
    required this.deliveryBy, required this.bookTitle,required this.deliveryStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89.h,
      padding: EdgeInsets.all(9.r),
      margin: EdgeInsets.symmetric(vertical: 9.5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.lightBlue,
      ),
      child: Row(
        children: [
          Image.asset("Assets/Images/book3.png"),
          SizedBox(
            width: 9.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Delivery by $deliveryBy",
                style: AppStyles.subHeading1TextStyle
                    .copyWith(fontSize: 10),
              ),
               Text(
                bookTitle,
                style: AppStyles.normalTextStyle,
              ),

              Image.asset("Assets/Icon/5star_icon.png"),

               Text(
                deliveryStatus,
                style: AppStyles.normalTextStyle.copyWith(fontSize: 10, color: AppColors.green),
              ),


            ],
          ),
       
          const Spacer(),

          const Icon(Icons.arrow_forward_ios,),
        ],
      ),
    );
  }
}
