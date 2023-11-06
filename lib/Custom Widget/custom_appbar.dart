
import 'package:flutter/material.dart';
import 'package:medical_aesthetic_books/Constant/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{

  final String title;
  final PreferredSizeWidget? bottom;
  final Widget? leading;
  final Color backgroundColor;
  final List<Widget>? trailingWidget;
  const CustomAppBar({
    this.backgroundColor = Colors.white,
    this.leading,
    super.key,
    this.trailingWidget,
    this.bottom,
    required this.title,
  });


  @override
 
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      leading: leading,
      automaticallyImplyLeading: leading ==null ? false: true,
      elevation: 1,
      
      bottom: bottom,
      
      backgroundColor: backgroundColor,
      centerTitle: false,
      title:  Text(
        title,
        style:const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: trailingWidget,
    );
  }
}
