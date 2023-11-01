import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalBookList extends StatelessWidget {
  const HorizontalBookList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 150.h,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        
        itemBuilder: (context, index){
          List list = ["ENT", "Physical Therapy", "Military Medicine", "Anatomy"];
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: 12.w),
            child: SizedBox(
              width: 65.w,
              child: Column(
                children: [
                  Image.asset("Assets/Images/book1.png"),
                  Expanded(child: Text(list[index%4], maxLines: 2,)),
                ],
              ),
            ),
          );
      }),
    );
  }
}