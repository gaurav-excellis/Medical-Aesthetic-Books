
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';

class LandingFilesPage extends StatelessWidget {
  const LandingFilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Folders",
                    style: AppStyles.subHeading1TextStyle.copyWith(fontSize: 12),
                  ),
                ),
                Image.asset(AppIcons.listByIconIcon),
                SizedBox(
                  width: 15.w,
                ),
                Image.asset(AppIcons.listByNameIcon),
              ],
            ),
            SizedBox(height: 44.h,),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  childAspectRatio: 1.2,
                  mainAxisSpacing: 33,
                ),
                itemBuilder: (context, index) {
                  return const LandingFilesCardWidget(
                    iconUrl: AppIcons.directoryIcon,
                    headerText: "Discussion Attachments",
                    sizeText: "(0 KB)",
                    lastUpdateText: "last update: 19.03.21",
      
                    );
                }),
            SizedBox(height: 31.h,),
            Row(
              children: [
                Text(
                  "Recent Files",
                  style: AppStyles.subHeading1TextStyle.copyWith(fontSize: 12),
                ),
                
              ],
            ),
            SizedBox(height: 44.h,),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  childAspectRatio: 1.2,
                  mainAxisSpacing: 33,
                ),
                itemBuilder: (context, index) {
                  return const LandingFilesCardWidget(
                    iconUrl: AppIcons.pdfIcon,
                    headerText: "Discussion Attachments",
                    sizeText: "(0 KB)",
                    lastUpdateText: "last update: 19.03.21",
      
                    );
                }),
          ],
        ),
      ),
    );
  }
}

class LandingFilesCardWidget extends StatelessWidget {
  final String headerText, sizeText, lastUpdateText, iconUrl;
  const LandingFilesCardWidget({
    required this.headerText,
    required this.sizeText,
    required this.lastUpdateText,
    required this.iconUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      
      alignment: AlignmentDirectional.topCenter,
      children: [
        Card(
          elevation: 1,
          color: AppColors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 9.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(AppIcons.downloadIcon),
                  SizedBox(
                    width: 9.w,
                  ),
                ],
              ),
              SizedBox(
                height: 22.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      headerText,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: AppStyles.smallTextStyle
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      sizeText,
                      style: AppStyles.normalTextStyle
                          .copyWith(fontSize: 8),
                    ),
                    Text(
                      lastUpdateText,
                      style: AppStyles.normalTextStyle
                          .copyWith(fontSize: 8),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -30,
          child: Image.asset(iconUrl)),
      
      ],
    );
  }
}
