
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_textfield.dart';

class LandingMessagePage extends StatelessWidget {
  const LandingMessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      child: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.normal),
            child: Column(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset("Assets/Images/Ellipse 6.png"),
                      Container(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width * 0.75,
                        margin: EdgeInsets.only(left: 5.w),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius:const BorderRadius.only(
                            topRight: Radius.circular(45),
                            bottomLeft: Radius.circular(45),
                            bottomRight: Radius.circular(45),
                          ),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 15.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text("Joe Does",style: AppStyles.screenHeadingTextStyle.copyWith(fontSize: 14),),
                            Text("Lorem ipsum dolor sit amet consectetur ",style: AppStyles.smallTextStyle.copyWith(fontWeight: FontWeight.w400),),
                          ]),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(left: 39.w),child: Text("09:34 PM", style: AppStyles.normalTextStyle.copyWith(fontSize: 12, color: AppColors.grey),),),
                ],
              ),

              SizedBox(height: 5.h,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      
                      Container(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width * 0.75,
                        margin: EdgeInsets.only(right: 5.w),
                        decoration: const BoxDecoration(
                          color: Color(0xff1D50B1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            bottomLeft: Radius.circular(45),
                            bottomRight: Radius.circular(45),
                          ),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 15.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text("Joe Does",style: AppStyles.screenHeadingTextStyle.copyWith(fontSize: 14, color: AppColors.white),),
                            Text("Lorem ipsum dolor sit amet consectetur ",style: AppStyles.smallTextStyle.copyWith(fontWeight: FontWeight.w400, color: AppColors.white),),
                          ]),
                        ),
                      ),
                      Image.asset("Assets/Images/Ellipse 6.png", height: 34,width: 34,),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(right: 39.w),child: Text("09:34 PM", style: AppStyles.normalTextStyle.copyWith(fontSize: 12, color: AppColors.grey),),),
                ],
              ),
            ]),
          )),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  hintText: "Type here..",
                  borderRequired: true,
                  borderRadius: 60,
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: Image.asset(AppIcons.attachFileIcon),
                  ),
                ),
              ),
              SizedBox(
                width: 13.w,
              ),
              Container(
                height: 37.h,
                width: 37.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(180),
                  boxShadow: const [
                    BoxShadow(blurRadius: 8, color: AppColors.grey)
                  ],
                  color: AppColors.buttonColorPrimary,
                ),
                child: Image.asset(AppIcons.sendMessageIcon),
              ),
            ],
          ),
          SizedBox(
            height: 11.h,
          ),
        ],
      ),
    );
  }
}
