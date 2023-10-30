import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_textfield.dart';

class BrandProfilePage extends StatelessWidget {
  const BrandProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Brand Profiles",
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
      body: Column(
        children: [
          Container(
            height: 140.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
            margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: const Color(0xffE6F5FF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Lorem ipsum dolor sit amet consectetur. Turpis interdum sollicitudin quam tincidunt nisl scelerisque nunc et. Amet sed nec nunc est et proin odio at. Feugiat velit tincidunt et mattis sed odio malesuada posuere odio. ",
              style: AppStyles.normalTextStyle.copyWith(fontSize: 12),
            ),
          ),
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
            child: const CustomButton(
              buttonText: "Create Brand Profile",
              isButtonFilled: false,
            ),
          ),
          SizedBox(
            height: 53.h,
          ),
          Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 12.h,
                    );
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const BrandProfileCardWidget(
                      initials: "SQ",
                      headerText: "SquareGenie",
                    );
                  }))
        ],
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
              const Text("Create brand profile",
                  style: AppStyles.subHeading1TextStyle),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                icon: Image.asset(AppIcons.personIcon),
                hintText: "Adam",
                labelText: "Adam",
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
              Row(
                children: [
                  Image.asset(AppIcons.editIcon),
                  SizedBox(
                    width: 22.w,
                  ),
                  Text(
                    "Description",
                    style: AppStyles.normalTextStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              const CustomTextField(
                hintText: "Tell us about your brand",
                maxLines: 5,
                borderRequired: true,
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
        const Spacer(),
        Container(
          height: 160.h,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.1, vertical: 24),
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(105),
            ),
            boxShadow: [
              BoxShadow(color: AppColors.grey, blurRadius: 20),
            ],
          ),
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              InkWell(
                onTap: () {
                  showDialog(

                      context: context,
                      builder: (context) {
                        return Dialog(
                          elevation: 5,
                          child: Container(
                            width: 342,
                          height: 249,
                            
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.white),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                              Image.asset(AppIcons.tickIconGreen),
                              SizedBox(
                                height: 25.h,
                              ),
                              const Text(
                                "Brand added Successfully",
                                style: AppStyles.subHeading1TextStyle,
                              ),
                            ]),
                          ),
                        );
                      }).then((value) => Navigator.pop(context));
                },
                child: CustomButton(
                  buttonText: "Create",
                  height: 54.h,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class BrandProfileCardWidget extends StatelessWidget {
  final String initials, headerText;
  const BrandProfileCardWidget({
    required this.initials,
    required this.headerText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71.h,
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(children: [
        Container(
          margin: EdgeInsets.only(left: 12),
          height: 46.h,
          width: 48.w,
          decoration: BoxDecoration(
            color: const Color(0xffE6F5FF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              initials,
              style: AppStyles.screenHeadingTextStyle.copyWith(
                fontSize: 16,
                color: const Color(0xff0093FE),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20.w,
        ),
        Text(
          headerText,
          style: AppStyles.subHeading1TextStyle.copyWith(fontSize: 16),
        ),
        const Spacer(),
        Image.asset(AppIcons.threeDotIcon),
        SizedBox(
          width: 11.w,
        ),
      ]),
    );
  }
}
