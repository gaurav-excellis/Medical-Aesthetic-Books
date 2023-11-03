import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';

import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/colorful_category_card.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Features/Category/category_wise_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {
    super.initState();
  }

  List categoryList = [
    "ENT",
    "Physical Therapy",
    "Military Medicine",
    "Anatomy",
    "About Feces",
  ];
  final List cardColorsList = [
    AppColors.cardGreen,
    AppColors.cardViolet,
    AppColors.cardOrange,
    AppColors.cardTeal,
    AppColors.cardGrey,
  ];
  final List cardTextColorsList = [
    AppColors.cardGreenText,
    AppColors.cardVioletText,
    AppColors.cardOrangeText,
    AppColors.cardTealText,
    AppColors.cardGreyText,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          leading: Image.asset(AppIcons.drawerIcon),
          title: "",
          trailingWidget: [
            InkWell(
              onTap: () {},
              child: Image.asset(AppIcons.notificationIcon),
            ),
            SizedBox(
              width: 18.w,
            ),
            Image.asset(AppImages.profileImage),
            SizedBox(
              width: 24.w,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 11),
          child: Column(
            children: [
              SizedBox(
                height: 9.h,
              ),

              //SEARCH BOX
              Container(
                height: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    fillColor: Color(0xffEAF0FF),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.activeDotColor, width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    prefixIcon: Icon(Icons.search_sharp),
                    hintText: "Search Categories",
                  ),
                ),
              ),

              SizedBox(
                height: 32.h,
              ),

              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(
                            () => CategoryWiseScreen(
                                title: categoryList[index % 5]),
                          );
                        },
                        child: ColorfulCategoryCard(
                          cardColor: cardColorsList[index % 5],
                          cardTextColor: cardTextColorsList[index % 5],
                          title: categoryList[index % 5],
                          subtitle: "12 books",
                        ),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
