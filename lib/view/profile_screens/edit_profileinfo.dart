import 'package:coupkart/route/app_route.dart';
import 'package:coupkart/widget/custom_appbar.dart';
import 'package:coupkart/widget/custom_body_button.dart';
import 'package:coupkart/widget/custom_text_field.dart';
import 'package:coupkart/widget/form_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class EditProfileinfo extends StatelessWidget {
  EditProfileinfo({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: "Information Edit"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .04),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * .05,
            ),

            //name info stating from here========================>
            const FormHeadingText(formHeadingText: "Name"),
            CustomTextFormField(
                hintText: "Enter Name",
                controller: nameController),
            SizedBox(
              height: Get.height * .02,
            ),
            //email info stating from here========================>
            const FormHeadingText(formHeadingText: "Email"),
            CustomTextFormField(
                hintText: "Enter Email",
                controller: emailController),

            const Expanded(child: SizedBox()),

            CustomBodyButton(
                buttonTitle: "Save",
                ontap: () {
                  Get.toNamed(AppRoute.profileInfo);
                }),
            SizedBox(
              height: Get.height * .02,
            ),
          ],
        ),
      ),
    );
  }
}
