
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';
import 'package:medical_aesthetic_books/Constant/app_styles.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Features/Landing%20Page%20Illustration/View/landing_illustration_screen.dart';

class DeliveredScreen extends StatelessWidget {
  const DeliveredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (newContext) =>const LandingPageIllustrationScreen(),),);
            },
            child: const RequestDeliveredCard(
              requestName: "Panda’s Love Logo",
              requestId: "#12321",
              requestType: "Logos",
              lastUpdatedAt: "16 Mar, 5:48",
          
          
            ),
          );
        });
  }
}

class RequestDeliveredCard extends StatelessWidget {
  final String requestName, requestId, requestType, lastUpdatedAt;
  const RequestDeliveredCard({
    required this.requestName,
    required this.requestId,
    required this.requestType,
    required this.lastUpdatedAt,
    super.key,
  });

  final String requestNameHeader = "REQUEST NAME";
  final String typeHeader = "TYPE: ";
  final String lastUpdateHeader = "LAST UPDATE: ";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 11),
      padding: const EdgeInsets.symmetric(horizontal: 11),
      height: 120.h,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey),
          borderRadius: BorderRadius.circular(8)),
      child: Row(children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                requestNameHeader,
                style: AppStyles.normalTextStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade700,
                ),
              ),

              Text(
                requestName,
                style: AppStyles.subHeading1TextStyle.copyWith(
                  fontSize: 16,
                  
                ),
              ),

              Text(
                requestId,
                style: AppStyles.subHeading1TextStyle.copyWith(
                  fontSize: 12,
                  color: const Color(0xff0093FE),
                  
                ),
              ),

              Row(children: [
                Text(
                typeHeader,
                style: AppStyles.subHeading1TextStyle.copyWith(
                  fontSize: 12,
                  color: Colors.grey.shade700,
                  
                  
                ),
              ),

              Text(
                requestType,
                style: AppStyles.subHeading1TextStyle.copyWith(
                  fontSize: 16,
                  
                  
                  
                ),
              ),

              
              ],),
              Row(children: [
                Text(
                lastUpdateHeader,
                style: AppStyles.subHeading1TextStyle.copyWith(
                  fontSize: 12,
                  color: Colors.grey.shade700,
                  
                  
                ),
              ),

              Text(
                lastUpdatedAt,
                style: AppStyles.subHeading1TextStyle.copyWith(
                  fontSize: 16,
                  
                  
                  
                ),
              ),

              
              ],)
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(AppIcons.threeDotIcon),
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
      ]),
    );
  }
}
