import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_color.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.whiteColor,
      surfaceTintColor: AppColor.whiteColor,
      shadowColor: Colors.black,
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
      leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios)),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight);
}
