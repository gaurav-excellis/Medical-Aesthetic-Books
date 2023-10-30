import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Features/Intro%20Screen/View/intro_fav_books.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final List introImages = [
    {
      "image": AppIcons.intro1,
      "headerText": "Find Your Next Great Read",
      "subheadingText":
          "Lorem ipsum dolor sit amet consectetur. Dolor sit augue facilisis odio. Imperdiet donec diam tincidunt duis. Orci sed porttitor arcu lectus dictum. "
    },
    {
      "image": AppIcons.intro2,
      "logo": "",
      "headerText": "Get notified about the best book",
      "subheadingText":
          "Lorem ipsum dolor sit amet consectetur. Dolor sit augue facilisis odio. Imperdiet donec diam tincidunt duis. Orci sed porttitor arcu lectus dictum. "
    },
    {
      "image": AppIcons.intro3,
      "headerText": "Get notified about the best book",
      "subheadingText":
          "Lorem ipsum dolor sit amet consectetur. Dolor sit augue facilisis odio. Imperdiet donec diam tincidunt duis. Orci sed porttitor arcu lectus dictum. "
    },
  ];
  final PageController _pageController = PageController(
    initialPage: 0,
  );
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (_pageController.page!.round() != currentPage) {
        setState(() {
          currentPage = _pageController.page!.round();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppStyles.introScreenContainerDecoration,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: introImages.length,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.zero,
                      child: Image.asset(
                        introImages[index]['image'],
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Column(
                      children: [
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.all(25.h),
                          height: 395.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(81.h),
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  introImages[index]['headerText'],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                introImages[index]['subheadingText'],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: 10.h),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
            AnimatedSmoothIndicator(
              activeIndex: currentPage,
              count: introImages.length,
              effect: const ExpandingDotsEffect(
                dotHeight: 4,
                dotWidth: 12,
                activeDotColor: AppColors.activeDotColor,
              ),
            ),
            Positioned(
              bottom: 31.h,
              child: InkWell(
                onTap: () {
                  currentPage == introImages.length - 1
                      // ? Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (newContext) => const LoginScreen(),
                      //     ),
                      //   )
                      ? Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (newContext) =>  IntroFavBooks(),
                          ),
                        )
                      : _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear);
                },
                child: CustomButton(
                  buttonText: currentPage == introImages.length - 1
                      ? "Get Started"
                      : "Next",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
