import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/home_screen_card.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/home_screen_card_2.dart';
import 'package:medical_aesthetic_books/Features/Home/View/Product%20Detail/product_detail_screen.dart';

class CategoryWiseScreen extends StatelessWidget {
  final String title;
  const CategoryWiseScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
        leading: const BackButton(),
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
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 11.h),
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
            Expanded(
              child: GridView.builder(
                  itemCount: 15,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Get.to(() => ProductDetailsScreen(title: "Anti-racism book"),);
                      },
                      child: const  HomeScreenCard2(
                        imageUrl: "Assets/Images/book3.png",
                        currentPrice: "\$55.00",
                        previousPrice: "\$65.00",
                        heading: "Anti-racism book",
                        
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

