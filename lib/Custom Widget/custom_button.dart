
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor, iconColor;
  final double? width, height, buttonIconSpacing, iconSize;
  final TextStyle? buttonTextStyle;
  final bool isButtonFilled;
  const CustomButton({super.key, 
  this.buttonTextStyle,
  required this.buttonText, 
  this.isButtonFilled = true,
  this.width,
  this.iconSize,
  this.height,
  this.iconColor = AppColors.white,
  this.buttonIconSpacing,
  this.buttonColor = AppColors.buttonColorPrimary,
  });
  static const TextStyle btnTextStyle =  TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.sizeOf(context).width * 0.8,
      height: height ?? 54,
      decoration: BoxDecoration(
        border: Border.all(color: buttonColor),
        borderRadius: BorderRadius.circular(6),
        color: isButtonFilled?
         buttonColor : AppColors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            buttonText,
            style:buttonTextStyle ?? btnTextStyle.copyWith(color: isButtonFilled ? AppColors.white : AppColors.buttonColorPrimary),
          ),
          SizedBox(
            width: buttonIconSpacing ?? 16.w,
          ),
           Icon(
            Icons.arrow_forward_ios_rounded,
            color:isButtonFilled ? iconColor : AppColors.buttonColorPrimary,
            size: iconSize ?? 16,
          ),
        ],
      ),
    );
  }
}
