import 'package:flutter/material.dart';

import '../utils/app_color.dart';


class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  
  const CustomAppbar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.whiteColor,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppColor.primaryTxtColor,
          fontSize: 22,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: 0,
        ),
      ),
      centerTitle: true,
      // Add more customization here
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // Standard AppBar height
}
