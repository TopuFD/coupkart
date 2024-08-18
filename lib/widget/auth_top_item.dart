import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAuthTopItem extends StatelessWidget {
  const CustomAuthTopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height / 2.7,
      decoration: const BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
      child: Column(
        children: [
          SizedBox(
            height: Get.height * .05,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: Get.width * .03),
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColor.whiteColor,
                  )),
            ),
          ),
          SizedBox(
            height: Get.height * .06,
          ),
          Image.asset(AppImage.appLogo)
        ],
      ),
    );
  }
}
