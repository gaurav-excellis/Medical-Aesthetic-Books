import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_textfield.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: const BackButton(),
        title: "Privacy",
        trailingWidget: [
          InkWell(
            onTap: () {},
            child: Image.asset(AppIcons.notificationIcon),
          ),
          SizedBox(
            width: 24.w,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(children: [
          CustomTextField(
            readOnly: true,
            icon: Image.asset(AppIcons.keyIcon),
            hintText: "**********",
            suffixIcon: InkWell(
              onTap: () {},
              child: const Icon(
                Icons.visibility_off_outlined,
                color: AppColors.grey,
              ),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              showFlexibleBottomSheet(
                minHeight: 0,
                initHeight: 0.75,
                maxHeight: 1,
                context: context,
                builder: _buildBottomSheet,
                anchors: [0, 0.5, 1],
                isSafeArea: true,
                isCollapsible: true,
                isModal: true,
                barrierColor: Colors.black54,
                bottomSheetBorderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                bottomSheetColor: AppColors.white,
              );
            },
            child:const CustomButton(buttonText: "Change Password"),
          ),
        ]),
      ),
    );
  }
}

Widget _buildBottomSheet(
  BuildContext context,
  ScrollController scrollController,
  double bottomSheetOffset,
) {
  return Material(
    elevation: 2,
    type: MaterialType.card,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Change Password",
                  style: AppStyles.subHeading1TextStyle),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                icon: Image.asset(AppIcons.keyIcon),
                hintText: "Old Password",
                labelText: "Old Password",
                suffixIcon: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.visibility_off_outlined,
                    color: AppColors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                icon: Image.asset(AppIcons.keyIcon),
                hintText: "New Password",
                labelText: "New Password",
                suffixIcon: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.visibility_off_outlined,
                    color: AppColors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                icon: Image.asset(AppIcons.keyIcon),
                hintText: "Confirm Password",
                labelText: "Confirm Password",
                suffixIcon: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.visibility_off_outlined,
                    color: AppColors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 25.h),
          child: InkWell(
            onTap: () {},
            child: CustomButton(
              buttonText: "Save",
              height: 54.h,
            ),
          ),
        ),
        // Container(
        //   height: 160.h,
        //   padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.1, vertical: 24),
        //   decoration: const BoxDecoration(
        //     color: AppColors.white,
        //     borderRadius: BorderRadius.only(topLeft: Radius.circular(105),),
        //     boxShadow: [
        //       BoxShadow(
        //         color: AppColors.grey,
        //         blurRadius: 20),
        //     ],
        //   ),
        //   width: double.infinity,
        //   child: Column(
        //     children: [
        //       SizedBox(
        //         height: 50.h,
        //       ),
        //       InkWell(onTap: (){},
        //         child: CustomButton(buttonText: "Save", height: 52.h,),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    ),
  );
}
