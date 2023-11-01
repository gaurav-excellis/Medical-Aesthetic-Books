import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomePageOfferCard extends StatelessWidget {
  const HomePageOfferCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0.8, -1.2),
      children: [
        Container(
          height: 150.h,
          padding: EdgeInsets.only(right: 27.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xff2663ff),
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 16.w, bottom: 26.h, top: 18.h),
                    child: const Column(
                      children: [
                        Text(
                          "The Power of positive Thinking",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet consectetur. Dolor sit augue facilisis odio.",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset("Assets/Images/hands_book.png"),
              ]),
        ),
        Container(
          width: 77.w,
          height: 34.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(29),
              color: Colors.white),
          child: Center(
            child: Container(
              width: 71.w,
              height: 28.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: const Color(0xffffaf18),
              ),
              child:const Center(
                child: Text("30% Off",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

