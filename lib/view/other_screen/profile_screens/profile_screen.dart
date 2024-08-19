import 'package:coupkart/route/app_route.dart';
import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/widget/heading_text.dart';
import 'package:coupkart/widget/profile_custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: Get.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: AppColor.primaryColor)),
              child: const Center(
                child: Text(
                  '\$48.50',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 32,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * .02,
            ),
            const HeadingText(headingText: "Total Saved"),
            SizedBox(
              height: Get.height * .03,
            ),
            ProfileCustomBtn(
                ontap: () {
                  Get.toNamed(AppRoute.profileInfo);
                },
                title: "Profile Information",
                leadingIcon: const Icon(Icons.person),
                trailingIcon: const Icon(Icons.keyboard_arrow_right)),
            const ProfileCustomBtn(
                title: "Subscribtion",
                leadingIcon: Icon(Icons.star_rate),
                trailingIcon: Icon(Icons.keyboard_arrow_right)),
            const ProfileCustomBtn(
                title: "Settings",
                leadingIcon: Icon(Icons.settings),
                trailingIcon: Icon(Icons.keyboard_arrow_right)),
            const ProfileCustomBtn(
                title: "Log Out",
                leadingIcon: Icon(Icons.logout),
                trailingIcon: Icon(Icons.keyboard_arrow_right)),
          ],
        ),
      ),
    ));
  }
}
