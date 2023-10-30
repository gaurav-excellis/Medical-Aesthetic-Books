
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/icons_paths.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/create_request_card_widget.dart';
import 'package:medical_aesthetic_books/Custom%20Widget/custom_appbar.dart';
import 'package:medical_aesthetic_books/Features/Request/View/describe_request_screen.dart';

class PickProductScreen extends StatelessWidget {
  const PickProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: CustomAppBar(
        title: "Please pick a product", 
        leading:const BackButton(),
        trailingWidget: [
          Image.asset(AppIcons.searchIcon),
          SizedBox(width: 18.w,),
          Image.asset(AppIcons.notificationIcon),
          SizedBox(width: 24.w,),
        ],
        
        ),

        body: GridView.builder(
          itemCount: 6,
          
          
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 18,
            mainAxisSpacing: 24,
            ), 
          padding: const EdgeInsets.all(24),
          


          itemBuilder: (context, index){
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (newContext)=> const DescribeRequestScreen(),),);
            },
            child: const CreateRequestCardWidget(
              heading: "Business Cards",
              subHeading: "Lorem ipsum dolor sit amet consectetur.",
              imageUrl: "Assets/Images/business_card.png",
            ),
          );
        }),
    );
  }
}

