
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Features/Request/View/Request%20Sub%20Screens/request_delivered_screen.dart';
import 'package:medical_aesthetic_books/Features/Request/View/Request%20Sub%20Screens/request_queue_screen.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    _tabController =  TabController(
        length: 2, vsync: this, initialIndex: _currentTabIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: CustomAppBar(
          bottom: TabBar(
            controller: _tabController,
            isScrollable: false,
            tabAlignment: TabAlignment.fill,
            indicatorColor: AppColors.buttonColorPrimary,
            indicatorSize: TabBarIndicatorSize.tab,
            onTap: (value) {
              _tabController.animateTo(value);
              setState(() {
                _currentTabIndex = value;
              });
            },
            tabs: [
              Tab(
                icon: Text(
                  "Queue",
                  style: AppStyles.normalTextStyle.copyWith(
                    color: _currentTabIndex == 0
                        ? AppColors.buttonColorPrimary
                        : Colors.black87,
                    fontWeight: _currentTabIndex == 0
                        ? FontWeight.w600
                        : FontWeight.normal,
                  ),
                ),
              ),
              Tab(
                icon: Text(
                  "Delivered",
                  style: AppStyles.normalTextStyle.copyWith(
                    color: _currentTabIndex == 1
                        ? AppColors.buttonColorPrimary
                        : Colors.black87,
                    fontWeight: _currentTabIndex == 1
                        ? FontWeight.w600
                        : FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
          title: "Request",
          trailingWidget: [
            InkWell(
              onTap: () {},
              child: Image.asset(AppIcons.searchIcon),
            ),
            SizedBox(
              width: 18.w,
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(AppIcons.notificationIcon),
            ),
            SizedBox(
              width: 24.w,
            ),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: const [
        QueueScreen(),
        DeliveredScreen(),
      ]),
    );
  }
}

