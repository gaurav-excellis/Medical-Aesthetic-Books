import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/home_screen_card.dart';
import 'package:medical_aesthetic_books/Features/Home/Widgets/home_page_horizontal_booklist.dart';
import 'package:medical_aesthetic_books/Features/Home/Widgets/home_page_offer_widget.dart';
import 'package:medical_aesthetic_books/Features/Notifications/View/notifications_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(AppIcons.drawerIcon),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (newContext) => const NotificationsScreen(),
                  ),
                );
              },
              child: Image.asset(AppIcons.notificationIcon)),
          SizedBox(
            width: 15.w,
          ),
          Image.asset(AppImages.profileImage),
          SizedBox(
            width: 24.w,
          ),
        ],
      ),
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.normal),
          padding: const EdgeInsets.all(24),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hey Kumari!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  "Lorem ipsum dolor sit amet consectetur. ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Container(
                  height: 50.h,
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
                        borderSide: BorderSide(
                            color: AppColors.activeDotColor, width: 2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      prefixIcon: Icon(Icons.search_sharp),
                      hintText: "Search",
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Column(
                  children: [
                    ///carousel
                    // const HomePageCarousel(),
                    const HomePageOfferCard(),
                    
                    
                    SizedBox(
                      height: 31.h,
                    ),
                    

                    const HorizontalBookList(),
                    

                    SizedBox(
                      height: 25.h,
                    ),

                    ///feature collection
                    HeadingWidget(
                      heading: "Featured Collection",
                      onTap: () {},
                    ),

                    SizedBox(
                      height: 30.h,
                    ),

                    SizedBox(
                      height: 230.h,
                      // color: Colors.red,
                      child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(width: 20.w);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return const HomeScreenCard(
                              imageUrl: "Assets/Images/book2.png",
                              heading: "Mobile App Design",
                              currentPrice: "\$55.00 ",
                              previousPrice: "\$65.00 ",
                            );
                          }),
                    ),

                    SizedBox(
                      height: 25.h,
                    ),

                    ///mobile app design
                    HeadingWidget(
                      heading: "Mobile App Designs",
                      onTap: () {},
                    ),

                    SizedBox(
                      height: 30.h,
                    ),

                    SizedBox(
                      height: 230.h,
                      // color: Colors.red,
                      child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(width: 20.w);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return const HomeScreenCard(
                              imageUrl: "Assets/Images/mobile_design.png",
                              heading: "Mobile App Design",
                              currentPrice: "\$55.00 ",
                              previousPrice: "\$65.00 ",
                            );
                          }),
                    ),

                    SizedBox(
                      height: 25.h,
                    ),

                    ///website design
                    HeadingWidget(
                      heading: "Website Design",
                      onTap: () {},
                    ),

                    SizedBox(
                      height: 30.h,
                    ),

                    SizedBox(
                      height: 230.h,
                      // color: Colors.red,
                      child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(width: 20.w);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return const HomeScreenCard(
                              imageUrl: "Assets/Images/mobile_design.png",
                              heading: "Mobile App Design",
                              currentPrice: "\$55.00 ",
                              previousPrice: "\$65.00 ",
                            );
                          }),
                    ),

                    SizedBox(
                      height: 25.h,
                    ),

                    ///ad banner
                    Image.asset("Assets/Images/home_page_ad.png"),

                    SizedBox(
                      height: 30.h,
                    ),

                    ///logo design
                    HeadingWidget(
                      heading: "Logo Design",
                      onTap: () {},
                    ),

                    SizedBox(
                      height: 30.h,
                    ),

                    SizedBox(
                      height: 230.h,
                      // color: Colors.red,
                      child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(width: 20.w);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return const HomeScreenCard(
                              imageUrl: "Assets/Images/mobile_design.png",
                              heading: "Mobile App Design",
                              currentPrice: "\$55.00 ",
                              previousPrice: "\$65.00 ",
                            );
                          }),
                    ),

                    SizedBox(
                      height: 25.h,
                    ),

                    ///digital marketing post
                    HeadingWidget(
                      heading: "Digital Marketing Post",
                      onTap: () {},
                    ),

                    SizedBox(
                      height: 30.h,
                    ),

                    SizedBox(
                      height: 230.h,
                      // color: Colors.red,
                      child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(width: 20.w);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return const HomeScreenCard(
                              imageUrl: "Assets/Images/mobile_design.png",
                              heading: "Mobile App Design",
                              currentPrice: "\$55.00 ",
                              previousPrice: "\$65.00 ",
                            );
                          }),
                    ),

                    SizedBox(
                      height: 25.h,
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}



class HomePageCarousel extends StatefulWidget {
  const HomePageCarousel({
    super.key,
  });

  @override
  State<HomePageCarousel> createState() => _HomePageCarouselState();
}

class _HomePageCarouselState extends State<HomePageCarousel> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlutterCarousel(
          options: CarouselOptions(
            allowImplicitScrolling: true,
            aspectRatio: 1.7,

            showIndicator: false,
            viewportFraction: 1,
            autoPlay: true,
            enableInfiniteScroll: true,
            // enlargeCenterPage: true,
            onPageChanged: ((index, reason) {
              setState(() {
                _currentIndex = index;
              });
            }),

            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            slideIndicator: const CircularSlideIndicator(
              currentIndicatorColor: AppColors.activeDotColor,
            ),
          ),
          items: [1, 2, 3, 4].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xffffd701),
                        Color(0xffc12b79),
                        Color(0xff792f8a)
                      ],
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Unlimited Graphic & Web Design",
                              style: AppStyles.subHeading1TextStyle.copyWith(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Scale up your creative content production with a reliable and hassle-free design service.",
                              style: AppStyles.normalTextStyle.copyWith(
                                  color: AppColors.white, fontSize: 10),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            CustomButton(
                              buttonText: "PICK YOUR PLAN",
                              buttonColor: const Color(0xff21EB8A),
                              width: 134.w,
                              height: 31.h,
                              buttonIconSpacing: 6.w,
                              iconSize: 10,
                              iconColor: AppColors.black,
                              buttonTextStyle: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset("Assets/Images/carousel_img2.png")
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [0, 1, 2, 3].asMap().entries.map((entry) {
            return Container(
              width: 12.0,
              height: 12.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (Theme.of(context).brightness == Brightness.dark
                        ? AppColors.black
                        : AppColors.activeDotColor)
                    .withOpacity(_currentIndex == entry.key ? 0.9 : 0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class HeadingWidget extends StatelessWidget {
  final String heading;
  final VoidCallback onTap;
  const HeadingWidget({
    super.key,
    required this.heading,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: AppStyles.subHeading1TextStyle
              .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Text(
                "View all",
                style: AppStyles.normalTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.textButtonColor),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 12,
                color: AppColors.textButtonColor,
              )
            ],
          ),
        ),
      ],
    );
  }
}
