import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Features/Profile/View/personal_details_screen.dart';
import 'package:medical_aesthetic_books/Features/Profile/View/privacy_screen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "My Profile",
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
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 48.h,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(54, 25, 53, 6),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 11.h),
                //height: 234.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.lightBlue,
                ),
                child: Column(children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      const CircleAvatar(
                        radius: 72,
                        backgroundImage:
                            AssetImage("Assets/Images/profile_picture.png"),
                      ),
                      Image.asset(AppIcons.cameraIcon),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Ars Kumari",
                    style:
                        AppStyles.subHeading1TextStyle.copyWith(fontSize: 22),
                  ),
                  Text(
                    "San Francisco, CA",
                    style:
                        AppStyles.normalTextStyle.copyWith(color: Colors.grey),
                  ),
                ]),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.fromLTRB(54, 10, 53, 35),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 11.h, bottom: 14.h),
                //height: 234.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.lightBlue,
                ),
                child: Column(children: [
                  Text(
                    "+1 (415) 555 3890",
                    style: AppStyles.screenHeadingTextStyle
                        .copyWith(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "smith94@gmail.com",
                    style: AppStyles.normalTextStyle.copyWith(fontSize: 18),
                  ),
                  
                ]),
              ),
            ),
            ProfileCard(
              title: "Personal Details",
              subTitle: "User personal details",
              trailing: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (newContext) => const PersonalDetailsScreen(),
                    ),
                  );
                },
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                ),
              ),
            ),
            ProfileCard(
              title: "Privacy",
              subTitle: "Change & update password",
              trailing: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (newContext) => const PrivacyScreen(),
                    ),
                  );
                },
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 23),
              title: Text(
                "Logout",
                style: AppStyles.subHeading1TextStyle.copyWith(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String title, subTitle;
  final Widget trailing;
  const ProfileCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 23),
      trailing: trailing,
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          title,
          style: AppStyles.subHeading1TextStyle.copyWith(fontSize: 16),
        ),
        Text(
          subTitle,
          style: AppStyles.normalTextStyle,
        ),
      ]),
    );
  }
}
