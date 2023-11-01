
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Features/Landing%20Page%20Illustration/View/Landing%20Sub%20Screens/landing_brief_page.dart';
import 'package:medical_aesthetic_books/Features/Landing%20Page%20Illustration/View/Landing%20Sub%20Screens/landing_files_page.dart';
import 'package:medical_aesthetic_books/Features/Landing%20Page%20Illustration/View/Landing%20Sub%20Screens/landing_messages_page.dart';
import 'package:medical_aesthetic_books/Features/Notifications/View/notifications_screen.dart';

class LandingPageIllustrationScreen extends StatefulWidget {
  const LandingPageIllustrationScreen({super.key});

  @override
  State<LandingPageIllustrationScreen> createState() =>
      _LandingPageIllustrationScreenState();
}

class _LandingPageIllustrationScreenState
    extends State<LandingPageIllustrationScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    _tabController =
        TabController(length: 3, vsync: this, initialIndex: _currentTabIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: CustomAppBar(
        title: "Landing Page Illustration",
        leading: const BackButton(),
        trailingWidget: [
          Image.asset(AppIcons.searchIcon),
          SizedBox(
            width: 18.w,
          ),
          InkWell(
              onTap: () {
                Get.to(() => const NotificationsScreen());
              },
              child: Image.asset(AppIcons.notificationIcon)),
          SizedBox(
            width: 25.w,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 6.h,
            color: Colors.grey.shade300,
          ),
          Container(
            height: 62.h,
            color: AppColors.white,
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Landing Page Illustrations",
                      style: AppStyles.normalTextStyle
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "#12321",
                      style: AppStyles.smallTextStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff0093FE),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 95.w,
                  height: 37.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffD0F9E7),
                  ),
                  child: Center(
                    child: Text(
                      "Delivered",
                      style: AppStyles.subHeading1TextStyle.copyWith(
                        fontSize: 12,
                        color: const Color(0xff14e288),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TabBar(
              controller: _tabController,
              isScrollable: false,
              tabAlignment: TabAlignment.fill,
              unselectedLabelColor: AppColors.grey,
              labelColor: AppColors.buttonColorPrimary,
              labelStyle: AppStyles.subHeading1TextStyle.copyWith(fontSize: 16),
              indicatorColor: AppColors.buttonColorPrimary,
              indicatorSize: TabBarIndicatorSize.tab,
              onTap: (value) {
                _tabController.animateTo(value);
                setState(() {
                  _currentTabIndex = value;
                });
              },
              tabs: const [
                Tab(
                  icon: Text(
                    "Brief",
                  ),
                ),
                Tab(
                  icon: Text(
                    "Files",
                  ),
                ),
                Tab(
                  icon: Text(
                    "Messages",
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                LandingBriefPage(),
                LandingFilesPage(),
                LandingMessagePage()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
