
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Features/Home/View/Home%20Screen%20Pages/brand_profile_page.dart';
import 'package:medical_aesthetic_books/Features/Home/View/Home%20Screen%20Pages/home_page.dart';
import 'package:medical_aesthetic_books/Features/Home/View/Home%20Screen%20Pages/new_brand_page.dart';
import 'package:medical_aesthetic_books/Features/Home/View/Home%20Screen%20Pages/profile_page.dart';
import 'package:medical_aesthetic_books/Features/Request/View/create_request_screen.dart';
import 'package:medical_aesthetic_books/Features/Request/View/request_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> screenPagesBody = const [
    HomePage(),
    RequestScreen(),
    BrandProfilePage(),
    NewBrandPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
           AppColors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(180),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateRequestScreen(),
            ),
          );
        },
        backgroundColor: AppColors.white,
        child: const Icon(
          Icons.add,
          size: 40,
          color: AppColors.buttonColorPrimary,
        ),
      ),
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
              label: 'edit'),
          BottomNavigationBarItem(
              icon: Image.asset(_selectedIndex == 2
                  ? AppIcons.bottomNavBarIconSelected3
                  : AppIcons.bottomNavBarIconUnselected3),
              label: 'document'),
          BottomNavigationBarItem(
              icon: Image.asset(_selectedIndex == 3
                  ? AppIcons.bottomNavBarIconSelected4
                  : AppIcons.bottomNavBarIconUnselected4),
              label: 'help'),
          BottomNavigationBarItem(
              icon: Image.asset(_selectedIndex == 4
                  ? AppIcons.bottomNavBarIconSelected5
                  : AppIcons.bottomNavBarIconUnselected5),
              label: 'profile'),
          BottomNavigationBarItem(
              icon: Container(),
              activeIcon: Container(
                color: AppColors.textButtonColor,
              )),
        ],
      ),
      body: screenPagesBody[_selectedIndex],
    );
  }
}
