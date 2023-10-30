
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_textfield.dart';

class DescribeRequestScreen extends StatefulWidget {
  const DescribeRequestScreen({super.key});

  @override
  State<DescribeRequestScreen> createState() => _DescribeRequestScreenState();
}

class _DescribeRequestScreenState extends State<DescribeRequestScreen> {
  String? designGroupValue = "New design";
  String? requireCustomIllustration = "Yes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Describe your request",
        leading: const BackButton(),
        trailingWidget: [
          Image.asset(AppIcons.searchIcon),
          SizedBox(
            width: 18.w,
          ),
          Image.asset(AppIcons.notificationIcon),
          SizedBox(
            width: 24.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 26.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "First, Name your request",
              style: AppStyles.normalTextStyle,
            ),
            SizedBox(
              height: 9.h,
            ),
            const CustomTextField(
              hintText: "Select",
              borderRequired: true,
            ),
            SizedBox(
              height: 18.h,
            ),
            const Text(
              "Select your brand profile",
              style: AppStyles.normalTextStyle,
            ),
            SizedBox(
              height: 9.h,
            ),
            const CustomTextField(
              hintText: "Select",
              borderRequired: true,
            ),
            SizedBox(
              height: 18.h,
            ),
            const Text(
              "Which type of design do you need?",
              style: AppStyles.normalTextStyle,
            ),
            SizedBox(
              height: 9.h,
            ),
            Row(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Radio(
                        value: "New design",
                        groupValue: designGroupValue,
                        onChanged: (newVal) {
                          setState(() {
                            designGroupValue = newVal;
                          });
                        }),
                    const Text(
                      "New Design",
                      style: AppStyles.normalTextStyle,
                    )
                  ],
                )),
                Expanded(
                  child: Row(
                    children: [
                      Radio(
                          value: "Re-design",
                          groupValue: designGroupValue,
                          onChanged: (newVal) {
                            setState(() {
                              designGroupValue = newVal;
                            });
                          }),
                      const Text(
                        "Re-design",
                        style: AppStyles.normalTextStyle,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18.h,
            ),
            const Text(
              "How many pages/slides do you need?",
              style: AppStyles.normalTextStyle,
            ),
            SizedBox(
              height: 9.h,
            ),
            const CustomTextField(
              borderRequired: true,
            ),
            SizedBox(
              height: 18.h,
            ),
            const Text(
              "What size and format do you need?",
              style: AppStyles.normalTextStyle,
            ),
            SizedBox(
              height: 9.h,
            ),
            const CustomTextField(
              hintText:
                  "E.g. A4 potrait or landsxape, for web use or for print .pdf",
              borderRequired: true,
              maxLines: 5,
            ),
            SizedBox(
              height: 18.h,
            ),
            const Text(
              "What copy should we include in the presentation?",
              style: AppStyles.normalTextStyle,
            ),
            SizedBox(
              height: 9.h,
            ),
            const CustomTextField(
              hintText: "E.g. titles, sub- titles, paragraph etc.",
              borderRequired: true,
              maxLines: 5,
            ),
            SizedBox(
              height: 18.h,
            ),
            const Text(
              "Upload any designs, assets or inspiration we should follow.",
              style: AppStyles.normalTextStyle,
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              "E.g. brand assets, reference designs, bribbble, behance, pinterest etc.",
              style: AppStyles.normalTextStyle.copyWith(color: AppColors.grey),
            ),
            SizedBox(
              height: 9.h,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.4,
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 25.h),
              decoration:
                  BoxDecoration(border: Border.all(color: AppColors.grey)),
              child: InkWell(
                onTap: () {},
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppIcons.addFileIcon),
                      SizedBox(
                        height: 19.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AppIcons.uploadIcon),
                          const Text(
                            " Upload a file",
                            style: AppStyles.normalTextStyle,
                          ),
                        ],
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            const Text(
              "Does your design project require custom illustrations/icons?",
              style: AppStyles.normalTextStyle,
            ),
            SizedBox(
              height: 9.h,
            ),
            Row(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Radio(
                        value: "Yes",
                        groupValue: requireCustomIllustration,
                        onChanged: (newVal) {
                          setState(() {
                            requireCustomIllustration = newVal;
                          });
                        }),
                    const Text(
                      "Yes",
                      style: AppStyles.normalTextStyle,
                    )
                  ],
                )),
                Expanded(
                  child: Row(
                    children: [
                      Radio(
                          value: "No",
                          groupValue: requireCustomIllustration,
                          onChanged: (newVal) {
                            setState(() {
                              requireCustomIllustration = newVal;
                            });
                          }),
                      const Text(
                        "No",
                        style: AppStyles.normalTextStyle,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18.h,
            ),
            const Text(
              "Do you have any additional information?",
              style: AppStyles.normalTextStyle,
            ),
            SizedBox(
              height: 9.h,
            ),
            const CustomTextField(
              hintText:
                  "E.g. specific requirements, visual direction, links etc.",
              borderRequired: true,
              maxLines: 5,
            ),
            SizedBox(
              height: 18.h,
            ),
            Center(
              child: InkWell(
                onTap: () {},
                child: const CustomButton(buttonText: "Submit"),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
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
