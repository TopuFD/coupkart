import 'package:coupkart/route/app_route.dart';
import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/widget/custom_body_button.dart';
import 'package:coupkart/widget/custom_text_field.dart';
import 'package:coupkart/widget/form_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ChangePassScreen extends StatelessWidget {
  ChangePassScreen({super.key});
  TextEditingController currentPassControler = TextEditingController();
  TextEditingController newPassControler = TextEditingController();
  TextEditingController comPassControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
            color: AppColor.secondaryTxtColor,
            fontSize: 18,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .03),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * .03,
            ),
            const FormHeadingText(formHeadingText: "Your current password"),
            CustomTextFormField(
                prefixIcon: const Icon(Icons.key_sharp),
                suffixIcon: const Icon(Icons.remove_red_eye),
                hintText: "Current Password",
                controller: currentPassControler,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Field is impty";
                  } else {
                    return null;
                  }
                }),
            SizedBox(
              height: Get.height * .02,
            ),
            const FormHeadingText(formHeadingText: "Enter new password"),
            CustomTextFormField(
                prefixIcon: const Icon(Icons.key_sharp),
                suffixIcon: const Icon(Icons.remove_red_eye),
                hintText: "Enter new Password",
                controller: currentPassControler,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Field is impty";
                  } else {
                    return null;
                  }
                }),
            SizedBox(
              height: Get.height * .02,
            ),
            const FormHeadingText(formHeadingText: "Re-enter new Password"),
            CustomTextFormField(
                prefixIcon: const Icon(Icons.key_sharp),
                suffixIcon: const Icon(Icons.remove_red_eye),
                hintText: "Confirm Password",
                controller: currentPassControler,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Field is impty";
                  } else {
                    return null;
                  }
                }),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                  onPressed: () {
                    Get.toNamed(AppRoute.forgetPassScreen);
                  },
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ),
            const Expanded(child:  SizedBox()),
            CustomBodyButton(
                buttonTitle: "Update Password", ontap: () {}),
            SizedBox(height: Get.height * .02,)
          ],
        ),
      ),
    );
  }
}
