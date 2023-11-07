import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_button.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/home_screen_card.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/home_screen_card_2.dart';
import 'package:medical_aesthetic_books/Features/About%20Us/View/about_us_screen.dart';
import 'package:medical_aesthetic_books/Features/Address/View/manage_address_screen.dart';
import 'package:medical_aesthetic_books/Features/Home/Controller/my_drawer_controller.dart';
import 'package:medical_aesthetic_books/Features/Home/Widgets/home_page_newly_launched_widgets.dart';
import 'package:medical_aesthetic_books/Features/Home/Widgets/home_page_offer_widget.dart';
import 'package:medical_aesthetic_books/Features/Notifications/View/notifications_screen.dart';
import 'package:medical_aesthetic_books/Features/Orders/track_order.dart';

class HomePage extends GetView<MyDrawerController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            controller.toggleDrawer();
          },
          child: Image.asset(AppIcons.drawerIcon)),
        actions: [
          InkWell(
              onTap: () {
                Get.to(()=>  NotificationsScreen(),);
              },
              child: Image.asset(AppIcons.notificationIcon)),
          SizedBox(
            width: 15.w,
          ),
          InkWell(
            onTap: (){
              
            },
            child: Image.asset(AppImages.profileImage)),
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
          child: Column(
            children: [
              Padding(
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

                      //SEARCH BOX
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
                          //TOP CARD
                          const HomePageOfferCard(),

                          SizedBox(
                            height: 31.h,
                          ),

                          //HORIZONTAL BOOKS LIST
                          SizedBox(
                            height: 150.h,
                            child: ListView.builder(
                                itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  List list = [
                                    "ENT",
                                    "Physical Therapy",
                                    "Military Medicine",
                                    "Anatomy"
                                  ];
                                  return Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12.w),
                                    child: SizedBox(
                                      width: 65.w,
                                      child: InkWell(
                                        onTap: () {
                                          showFlexibleBottomSheet(
                                            minHeight: 0,
                                            initHeight: 0.9,
                                            maxHeight: 1,
                                            context: context,
                                            builder: ((context,
                                                scrollController,
                                                bottomSheetOffset) {
                                              return Material(
                                                elevation: 2,
                                                type: MaterialType.card,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      24.0),
                                                  child: Column(
                                                    children: [
                                                      HeadingWidget(
                                                        heading:
                                                            list[index % 4],
                                                        onTap: () {},
                                                      ),
                                                      Expanded(
                                                        child: GridView.builder(
                                                          itemCount: 15,
                                                            gridDelegate:
                                                               const SliverGridDelegateWithFixedCrossAxisCount(
                                                              crossAxisCount: 2,
                                                              mainAxisSpacing:
                                                                  5,
                                                              childAspectRatio: 2/3,
                                                              crossAxisSpacing:
                                                                  5,
                                                            ),
                                                            itemBuilder:
                                                                (context,
                                                                    index) {
                                                              return const HomeScreenCard2(
                                                                imageUrl:
                                                                    "Assets/Images/book2.png",
                                                                heading:
                                                                    "Mobile App Design",
                                                                currentPrice:
                                                                    "\$55.00 ",
                                                                previousPrice:
                                                                    "\$65.00 ",
                                                              );
                                                            }),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            }),
                                            anchors: [0, 0.5, 1],
                                            isSafeArea: true,
                                            isCollapsible: true,
                                            isModal: true,
                                            barrierColor: Colors.black54,
                                            bottomSheetBorderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                            bottomSheetColor: AppColors.white,
                                          );
                                        },
                                        child: Column(
                                          children: [
                                            Image.asset(
                                                "Assets/Images/book1.png"),
                                            Expanded(
                                                child: Text(
                                              list[index % 4],
                                              maxLines: 2,
                                            )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),

                          SizedBox(
                            height: 25.h,
                          ),

                          ///feature collection
                          HeadingWidget(
                            heading: "Featured Collection",
                            onTap: () {
                              
                            },
                          ),

                          SizedBox(
                            height: 30.h,
                          ),

                          SizedBox(
                            height: 300.h,
                            //  color: Colors.green,
                            child: ListView.separated(
                                separatorBuilder:
                                    (BuildContext context, int index) {
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

                          Stack(
                            alignment: const Alignment(-0.8, 1.2),
                            children: [
                              Container(
                                height: 150.h,
                                // padding: EdgeInsets.only(right: 27.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColors.amber),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 16.w,
                                              bottom: 26.h,
                                              top: 18.h),
                                          child: const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "SALE",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                "30% OFF",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                "Lorem ipsum dolor sit amet consectetur. Dolor sit augue facilisis odio.",
                                                style: TextStyle(
                                                  fontSize: 8,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Image.asset(
                                          "Assets/Images/book_with_glass.png"),
                                    ]),
                              ),
                              Container(
                                width: 103.w,
                                height: 26.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(29),
                                  color: AppColors.green,
                                ),
                                child: const Center(
                                  child: Text("Shop Now",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
              ),
              Container(
                width: double.maxFinite,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                color: AppColors.lightBlue,
                child: Column(
                  children: [

                    //NEWLY LAUNCHED HEADER
                    HeadingWidget(
                      heading: "Newly Launched",
                      onTap: () {
                        
                      },
                    ),
                    SizedBox(
                      height: 360.h,
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.h),
                            child: const HomePageNewlyLaunchedCard(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.r),
                child: Column(
                  children: [
                    HeadingWidget(
                      heading: "Best Selling",
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 290.h,
                      //  color: Colors.green,
                      child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(width: 20.w);
                          },
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return const HomeScreenCard(
                              imageUrl: "Assets/Images/book3.png",
                              heading: "Mobile App Design",
                              currentPrice: "\$55.00 ",
                              previousPrice: "\$65.00 ",
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
