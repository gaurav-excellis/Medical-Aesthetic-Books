import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_textfield.dart';
import 'package:medical_aesthetic_books/Features/Home/Controller/personal_screen_controller.dart';

class PersonalDetailsScreen extends StatelessWidget {
  const PersonalDetailsScreen({super.key});
  final String firstName = "Adam",
      lastName = "Smith",
      mobileNumber = "+1 (415) 555 3890",
      emailId = "smith02@gmail.com",
      address = "51 Hereford Avenue, Culburra, South Australia",
      area = "ABCD Apartment",
      zipCode = "5261",
      saveAs = "Home";

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
                    height: 27.h,
                  ),
                  const Text(
                    "Save As",
                    style: AppStyles.normalTextStyle,
                  ),
                  Text(
                    saveAs,
                    style: AppStyles.normalTextStyle.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 20.h,
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

final personalDetailController = Get.put(PersonalScreenController());
Widget _buildBottomSheet(
  BuildContext context,
  ScrollController scrollController,
  double bottomSheetOffset,
) {
  return Material(
    elevation: 2,
    type: MaterialType.card,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
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
                      SizedBox(
              height: 13.h,
            ),
            Text(
              "Save As",
              style: AppStyles.subHeading1TextStyle.copyWith(fontSize: 20),
            ),
            SizedBox(
              height: 7.h,
            ),
            Wrap(
              runSpacing: 10,
              spacing: 6,
              children: List.generate(
                  personalDetailController.saveAsList.length, (index) {
                return InkWell(
                  onTap: (){
                    personalDetailController.changeIndex(index);
                  },
                  child: Obx(
                    ()=>
                     Container(
                      // width: 130.w,
                      //height: 40.h,
                      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: index ==
                                      personalDetailController
                                          .selectedSaveAsIndex.value
                                  ? AppColors.activeDotColor
                                  : Colors.grey),
                          borderRadius: BorderRadius.circular(50),
                          color: index ==
                                  personalDetailController.selectedSaveAsIndex.value
                              ? AppColors.activeDotColor
                              : Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              "Assets/Icon/${personalDetailController.saveAsIconsList[index]}"),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            personalDetailController.saveAsList[index],
                            style: AppStyles.normalTextStyle.copyWith(
                                fontSize: 16,
                                color: index ==
                                        personalDetailController
                                            .selectedSaveAsIndex.value
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 13.h,
          color: Colors.grey.shade100,
        ),
        
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
