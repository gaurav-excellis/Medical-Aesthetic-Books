import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Features/Home/Controller/my_drawer_controller.dart';
import 'package:medical_aesthetic_books/Features/Home/View/Home%20Screen%20Pages/my_orders_page.dart';
import 'package:medical_aesthetic_books/Features/Home/View/Home%20Screen%20Pages/home_page.dart';
import 'package:medical_aesthetic_books/Features/Home/View/Home%20Screen%20Pages/my_wishlist_page.dart';
import 'package:medical_aesthetic_books/Features/Home/View/Home%20Screen%20Pages/profile_page.dart';

import 'package:medical_aesthetic_books/Features/Home/View/Home%20Screen%20Pages/category_screen.dart';
import 'package:medical_aesthetic_books/Features/Home/View/drawer_menu_screen.dart';

class HomeScreen extends StatefulWidget {
 const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> screenPagesBody = const [
    HomePage(),
    CategoryScreen(),
    MyOrdersPage(),
    MyWishlistPage(),
    ProfilePage(),
  ];
  final drawerController = Get.put(MyDrawerController());

  @override
  Widget build(BuildContext context) {
    return 
    
    GetBuilder<MyDrawerController>(
     builder:  (_)=>
       ZoomDrawer(
        style: DrawerStyle.defaultStyle,
        controller: drawerController.zoomDrawerController,
        borderRadius: 24.0,
        showShadow: true,
        menuBackgroundColor: AppColors.activeDotColor,
        angle: 0,
        drawerShadowsBackgroundColor: Colors.grey,
        slideWidth: MediaQuery.sizeOf(context).width * 0.8,
        menuScreen: const DrawerMenuScreen(),
         mainScreen: Scaffold(
          backgroundColor: AppColors.white,
          
          bottomNavigationBar: SnakeNavigationBar.color(
            selectedItemColor: AppColors.textButtonColor,
            backgroundColor: AppColors.textButtonColor,
            behaviour: SnakeBarBehaviour.floating,
            snakeShape: const SnakeShape(
              centered: true,
              padding: EdgeInsets.only(bottom: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            snakeViewColor: AppColors.white,
            unselectedItemColor: Colors.white60,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            currentIndex: _selectedIndex,
            onTap: (index) {
              if (kDebugMode) {
                print(index);
              }
              setState(() {
                if (index != 5) {
                  _selectedIndex = index;
                }
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(_selectedIndex == 0
                      ? AppIcons.bottomNavBarIconSelected1
                      : AppIcons.bottomNavBarIconUnselected1),
                  label: 'home'),
              BottomNavigationBarItem(
                  icon: Image.asset(_selectedIndex == 1
                      ? AppIcons.bottomNavBarIconSelected2
                      : AppIcons.bottomNavBarIconUnselected2),
                  label: 'books'),
              BottomNavigationBarItem(
                  icon: Image.asset(_selectedIndex == 2
                      ? AppIcons.bottomNavBarIconSelected3
                      : AppIcons.bottomNavBarIconUnselected3),
                  label: 'cart'),
              BottomNavigationBarItem(
                  icon: Image.asset(_selectedIndex == 3
                      ? AppIcons.bottomNavBarIconSelected4
                      : AppIcons.bottomNavBarIconUnselected4),
                  label: 'wishlist'),
              BottomNavigationBarItem(
                  icon: Image.asset(_selectedIndex == 4
                      ? AppIcons.bottomNavBarIconSelected5
                      : AppIcons.bottomNavBarIconUnselected5),
                  label: 'profile'),
              // BottomNavigationBarItem(
              //   icon: Container(),
              //   activeIcon: Container(
              //     color: AppColors.textButtonColor,
              //   ),
              // ),
            ],
          ),
          body: 
          
          screenPagesBody[_selectedIndex],
             ),
       ),
    );
  }
}
