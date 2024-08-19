import 'package:coupkart/route/app_route.dart';
import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/widget/custom_body_button.dart';
import 'package:coupkart/widget/form_heading_text.dart';
import 'package:coupkart/widget/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: const HeadingText(headingText: "Account Information"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .04),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * .05,
            ),

            //name info stating from here========================>
            const FormHeadingText(formHeadingText: "Name"),
            Container(
              width: Get.width,
              height: Get.height * .05,
              decoration: ShapeDecoration(
                color: AppColor.greyColor,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 0.50,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: AppColor.secondaryColor,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: Get.width * .03),
                  child: const Text(
                    'Henry Johnson',
                    style: TextStyle(
                      color: AppColor.secondaryTxtColor,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * .02,
            ),
            //email info stating from here========================>
            const FormHeadingText(formHeadingText: "Email"),
            Container(
              width: Get.width,
              height: Get.height * .05,
              decoration: ShapeDecoration(
                color: AppColor.greyColor,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 0.50,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: AppColor.secondaryColor,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: Get.width * .03),
                  child: const Text(
                    'jhondhow123@gmail.com',
                    style: TextStyle(
                      color: AppColor.secondaryTxtColor,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
            CustomBodyButton(
                buttonTitle: "Edit Account",
                ontap: () {
                  Get.toNamed(AppRoute.editProfileInfo);
                }),
            SizedBox(height: Get.height * .02,)
          ],
        ),
      ),
    );
  }
}
