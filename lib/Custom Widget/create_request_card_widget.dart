
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';

class CreateRequestCardWidget extends StatelessWidget {
  final String heading, subHeading, imageUrl;
  const CreateRequestCardWidget({
    required this.heading,
    required this.subHeading,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: AppColors.white,
       
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imageUrl),
            SizedBox(height: 17.h,),
            Text(heading, style: AppStyles.subHeading1TextStyle.copyWith(fontSize: 12),),
            SizedBox(height: 10.h,),
            Text(subHeading,textAlign: TextAlign.center, style: AppStyles.normalTextStyle.copyWith(fontSize: 8),)
        ],),
      ),
      
    );
  }
}