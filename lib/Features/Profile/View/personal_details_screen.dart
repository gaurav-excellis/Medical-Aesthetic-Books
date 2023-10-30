import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_textfield.dart';

class PersonalDetailsScreen extends StatelessWidget {
  const PersonalDetailsScreen({super.key});
  final String firstName = "Adam",
      lastName = "Smith",
      mobileNumber = "+1 (415) 555 3890",
      emailId = "smith02@gmail.com",
      address = "51 Hereford Avenue, Culburra, South Australia",
      area = "ABCD Apartment",
      zipCode = "5261";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: const BackButton(),
        title: "Personal Details",
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
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "First Name",
                    style: AppStyles.normalTextStyle,
                  ),
                  Text(
                    firstName,
                    style: AppStyles.normalTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  const Text(
                    "Last Name",
                    style: AppStyles.normalTextStyle,
                  ),
                  Text(
                    lastName,
                    style: AppStyles.normalTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  const Text(
                    "Mobile Number",
                    style: AppStyles.normalTextStyle,
                  ),
                  Text(
                    mobileNumber,
                    style: AppStyles.normalTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  const Text(
                    "Email ID",
                    style: AppStyles.normalTextStyle,
                  ),
                  Text(
                    emailId,
                    style: AppStyles.normalTextStyle
                        .copyWith(fontSize: 16, color: AppColors.grey),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  const Text(
                    "House/Flat/Block No.",
                    style: AppStyles.normalTextStyle,
                  ),
                  Text(
                    emailId,
                    style: AppStyles.normalTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  const Text(
                    "Apartment/Road/Area",
                    style: AppStyles.normalTextStyle,
                  ),
                  Text(
                    area,
                    style: AppStyles.normalTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  const Text(
                    "Zipcode",
                    style: AppStyles.normalTextStyle,
                  ),
                  Text(
                    zipCode,
                    style: AppStyles.normalTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                ],
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  showFlexibleBottomSheet(
                    minHeight: 0,
                    initHeight: 0.85,
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
                child: const CustomButton(buttonText: "Edit"),
              ),
            ),
          ],
        ),
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
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Edit Personal Details",
                          style: AppStyles.subHeading1TextStyle),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomTextField(
                        icon: Image.asset(AppIcons.personIcon),
                        hintText: "Adam",
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomTextField(
                        icon: Image.asset(AppIcons.personIcon),
                        hintText: "Last Name",
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomTextField(
                        icon: Image.asset(AppIcons.phoneIcon),
                        hintText: "Mobile Number",
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomTextField(
                        icon: Image.asset(AppIcons.atTheRateIcon),
                        hintText: "smith02@gmail.com",
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomTextField(
                        icon: Image.asset(AppIcons.houseIcon),
                        hintText: "House/Flat/Block No.",
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomTextField(
                        icon: Image.asset(AppIcons.houseIcon),
                        hintText: "Apartment/Road/Area",
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomTextField(
                        icon: Image.asset(AppIcons.locationIcon),
                        hintText: "Zipcode",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // Container(
        //   // height: 160.h,
        //   padding: EdgeInsets.symmetric(
        //       horizontal: MediaQuery.sizeOf(context).width * 0.1, vertical: 24),
        //   decoration: const BoxDecoration(
        //     color: AppColors.white,
        //     borderRadius: BorderRadius.only(
        //       topLeft: Radius.circular(105),
        //     ),
        //     boxShadow: [
        //       BoxShadow(color: AppColors.grey, blurRadius: 20),
        //     ],
        //   ),
        //   width: double.infinity,
        //   child: Padding(
        //     padding: EdgeInsets.only(top: 30.h, bottom: 10),
        //     child: InkWell(
        //       onTap: () {},
        //       child: CustomButton(
        //         buttonText: "Save",
        //         height: 54.h,
        //       ),
        //     ),
        //   ),
        // ),

        Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 20.h),
          child: InkWell(
            onTap: () {},
            child: CustomButton(
              buttonText: "Save",
              height: 54.h,
            ),
          ),
        ),
      ],
    ),
  );
}
