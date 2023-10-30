
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';

class NewBrandPage extends StatelessWidget {
   const NewBrandPage({super.key});
  final List headerList = const ["Color", "Logo", "Brand Guide", "Fonts"];
  final List subHeadingList = const [
    "Add a color",
    "Upload a file",
    "Upload a file",
    "Upload new font"
  ];
  final List iconUrlList = const [
    AppIcons.colorsIcon,
    
    AppIcons.addFileIcon,
    AppIcons.addFileIcon,
    AppIcons.addFileIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "New Brand",
        trailingWidget: [
          Image.asset(AppIcons.searchIcon),
          SizedBox(
            width: 18.w,
          ),
          Image.asset(AppIcons.notificationIcon),
          SizedBox(
            width: 25.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h),
        child: Column(
          children: [
            Container(
              height: 185.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 22.h),
              decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: const [
                  BoxShadow(blurRadius: 20, color: AppColors.grey)
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Brand Description",
                      style: AppStyles.subHeading1TextStyle,
                      
                    ),
                    Image.asset(AppIcons.bottomNavBarIconUnselected2),
                  ],
                ),
                SizedBox(
                  height: 21.h,
                ),
                Text(
                  "Lorem ipsum dolor sit amet consectetur. Turpis interdum sollicitudin quam tincidunt nisl scelerisque nunc et. Amet sed nec nunc est et proin odio at. Feugiat velit tincidunt et mattis sed odio malesuada posuere odio.",
                  style: AppStyles.normalTextStyle.copyWith(fontSize: 12),
                ),
              ]),
            ),
            SizedBox(
              height: 8.h,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: headerList.length,
              itemBuilder: (context, index) {
                return BrandProfileCardWidget(
                  headerText: headerList[index],
                  subHeading: subHeadingList[index],
                  iconUrl: iconUrlList[index],
                );
              },
            ),
            Container(
              height: 250.h,
              margin: EdgeInsets.only(bottom: 13.h),
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 22.h),
              decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: const [
                  BoxShadow(blurRadius: 20, color: AppColors.grey)
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    children: [
                      Text(
                        "Extra Assets",
                        style: AppStyles.subHeading1TextStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    padding:
                        EdgeInsets.symmetric(horizontal: 11.w, vertical: 13.h),
                    decoration: BoxDecoration(
                      color: const Color(0xffE6F5FF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "Lorem ipsum dolor sit amet consectetur. Turpis interdum sollicitudin quam tincidunt nisl scelerisque nunc etc.",
                      style: AppStyles.normalTextStyle.copyWith(fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Image.asset(AppIcons.addFileIcon),
                  // SizedBox(
                  //   height: 19.h,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppIcons.addIcon, height: 13),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        "Upload a file",
                        style: AppStyles.normalTextStyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 9,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h,),
            InkWell(onTap: (){},child: CustomButton(buttonText: "Submit"),),
            SizedBox(height: 15.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppIcons.uploadIcon2,
                  height: 13,
                  width: 13,
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text("How to fill in this brief?")
              ],
            ),
            SizedBox(height: 23.h,),
          ],
        ),
      ),
    );
  }
}

class BrandProfileCardWidget extends StatelessWidget {
  final String headerText, subHeading, iconUrl;
  const BrandProfileCardWidget({
    required this.headerText,
    required this.subHeading,
    required this.iconUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185.h,
      margin: EdgeInsets.only(bottom: 13.h),
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 22.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: const [BoxShadow(blurRadius: 20, color: AppColors.grey)],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(
          children: [
            Text(
              headerText,
              style: AppStyles.subHeading1TextStyle,
            ),
          ],
        ),
        Image.asset(iconUrl),
        SizedBox(
          height: 19.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppIcons.addIcon, height: 13),
            SizedBox(
              width: 6.w,
            ),
            Text(
              subHeading,
              style: AppStyles.normalTextStyle.copyWith(fontSize: 12),
            ),
            SizedBox(
              width: 6.w,
            ),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 9,
            )
          ],
        ),
      ]),
    );
  }
}
