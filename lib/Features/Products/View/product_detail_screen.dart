import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/home_screen_card.dart';
import 'package:medical_aesthetic_books/Features/Home/View/Home%20Screen%20Pages/home_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String title;
  const ProductDetailsScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
        leading: const BackButton(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 24.h, bottom: 8.h),
              child: Center(
                child: Image.asset(
                  "Assets/Images/book4.png",
                  height: 279.h,
                  width: 198.w,
                ),
              ),
            ),
            Center(
              child: AnimatedSmoothIndicator(
                activeIndex: 0,
                onDotClicked: (index) {},
                count: 4,
                effect: const SlideEffect(),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Clinical Examination in Cardiology",
                            style: AppStyles.screenHeading2TextStyle),
                        Image.asset(
                          "Assets/Icon/5star_icon.png",
                          height: 12.h,
                          width: 69.w,
                        ),
                        const Text(
                          "Pages: 1020",
                          style: AppStyles.normalTextStyle,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 33.w,
                    height: 33.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AppColors.lightBlue,
                    ),
                    child: Image.asset("Assets/Icon/share_icon.png"),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Price", style: AppStyles.subHeading1TextStyle),
                    Row(
                      children: [
                        const Text(
                          "\$55.00",
                          style: AppStyles.screenHeading2TextStyle,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Text(
                          "\$65.00",
                          style: AppStyles.normalTextStyle.copyWith(
                              fontSize: 10,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                  ]),
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Description",
                        style: AppStyles.subHeading1TextStyle),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur. Rhoncus amet quis urna nulla tortor. Erat nunc quam purus quam posuere dui tortor. Eu tincidunt lacus quam ac nunc sit dignissim neque mattis. Vel in nulla nisl curabitur ullamcorper. Eget amet faucibus volutpat ultrices purus pulvinar.",
                      style: AppStyles.normalTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Vel in nulla nisl curabitur ullamcorper. Eget amet faucibus volutpat ultrices purus pulvinar.",
                      style: AppStyles.normalTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("Assets/Icon/yellow_tick.svg"),
                        SizedBox(
                          width: 25.w,
                        ),
                        Text(
                          "No Shake",
                          style:
                              AppStyles.normalTextStyle.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("Assets/Icon/yellow_tick.svg"),
                        SizedBox(
                          width: 25.w,
                        ),
                        Text(
                          "No Trim",
                          style:
                              AppStyles.normalTextStyle.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("Assets/Icon/yellow_tick.svg"),
                        SizedBox(
                          width: 25.w,
                        ),
                        Text(
                          "No Fillers",
                          style:
                              AppStyles.normalTextStyle.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("Assets/Icon/yellow_tick.svg"),
                        SizedBox(
                          width: 25.w,
                        ),
                        Text(
                          "Lab Tested",
                          style:
                              AppStyles.normalTextStyle.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "View less details",
                          style: AppStyles.subHeading1TextStyle
                              .copyWith(color: AppColors.green),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_up,
                          color: AppColors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                  ]),
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
              child: Column(
                children: [
                  HeadingWidget(heading: "Similar Products", onTap: () {}),
                  SizedBox(
                    height: 300.h,
                    child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: HomeScreenCard(
                                imageUrl: "Assets/Images/book3.png",
                                heading: "Anti-racism book",
                                currentPrice: "\$55.00",
                                previousPrice: "\$65.00"),
                          );
                        }),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
              child: Column(
                children: [
                  HeadingWidget(heading: "You might also like", onTap: () {}),
                  SizedBox(
                    height: 300.h,
                    child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            child: HomeScreenCard(
                                imageUrl: "Assets/Images/book3.png",
                                heading: "Anti-racism book",
                                currentPrice: "\$55.00",
                                previousPrice: "\$65.00"),
                          );
                        }),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              height: 180.h,
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(90.w),
                ),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 25,
                    color: Colors.grey,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 44.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$55.00",
                          style: AppStyles.subHeading1TextStyle
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Clinical Examination in Cardiology",
                          style:
                              AppStyles.normalTextStyle.copyWith(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const CustomButton(
                      buttonText: "Add to cart",
                      width: double.maxFinite,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
