
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';

class QueueScreen extends StatelessWidget {
  const QueueScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppIcons.noDataIcon),
          
          const Text(
            "You don’t have any request in your Queue",
            maxLines: 2,
            style: AppStyles.screenHeadingTextStyle,
          ),
           SizedBox(height: 14.h,),

         const Text(
        "Lorem ipsum dolor sit amet consectetur. Nisi nunc morbi enim viverra aliquam ac tortor sit egestas. Venenatis rhoncus placerat at ac mi id dui hendrerit sed.",
        style: AppStyles.normalTextStyle,
    ),

        ],
      ),
    );
  }
}
