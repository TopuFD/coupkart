import 'package:coupkart/route/app_route.dart';
import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/widget/heading_text.dart';
import 'package:coupkart/widget/profile_custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  RxBool isCancelBtnTap = false.obs;
  RxBool isLogoutBtnTap = false.obs;
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
            ProfileCustomBtn(
                ontap: () {
                  Get.defaultDialog(
                      title: "Log Out",
                      titleStyle: const TextStyle(color: AppColor.redColor),
                      content: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Get.width * .02,
                        ),
                        child: Column(
                          children: [
                            const Divider(
                              color: AppColor.primaryColor,
                            ),
                            SizedBox(
                              height: Get.height * .02,
                            ),
                            const Text(
                              'Are you sure you want to Logout from your Account?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColor.secondaryTxtColor,
                                fontSize: 14,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              height: Get.height * .02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Obx(() => ElevatedButton(
                                      onPressed: () {
                                        isCancelBtnTap.value =
                                            !isCancelBtnTap.value;
                                        Get.back();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: isCancelBtnTap.value
                                            ? AppColor.whiteColor
                                            : AppColor.primaryColor,
                                      ),
                                      child: Text(
                                        'Cancel',
                                        style: TextStyle(
                                          color: isCancelBtnTap.value
                                              ? AppColor.primaryColor
                                              : AppColor.whiteColor,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    )),
                                Obx(() => ElevatedButton(
                                      onPressed: () {
                                        isLogoutBtnTap.value =
                                            !isLogoutBtnTap.value;
                                        Get.back();

                                        // isLogoutBtnTap.value = false;
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: isLogoutBtnTap.value
                                            ? AppColor.whiteColor
                                            : AppColor.primaryColor,
                                      ),
                                      child: Text(
                                        'Log Out',
                                        style: TextStyle(
                                          color: isLogoutBtnTap.value
                                              ? AppColor.primaryColor
                                              : AppColor.whiteColor,
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ));
                },
                title: "Log Out",
                leadingIcon: const Icon(Icons.logout),
                trailingIcon: const Icon(Icons.keyboard_arrow_right)),
          ],
        ),
      ),
    ));
  }
}
