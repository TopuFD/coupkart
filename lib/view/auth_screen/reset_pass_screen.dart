
import 'package:coupkart/widget/auth_top_item.dart';
import 'package:coupkart/widget/custom_body_button.dart';
import 'package:coupkart/widget/custom_text_field.dart';
import 'package:coupkart/widget/document_text.dart';
import 'package:coupkart/widget/form_heading_text.dart';
import 'package:coupkart/widget/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ResetPassScreen extends StatelessWidget {
  ResetPassScreen({super.key});

  TextEditingController resetPassController = TextEditingController();
  TextEditingController comfirmPassController = TextEditingController();
  final GlobalKey _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const CustomAuthTopItem(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * .05,
                    ),
                    const HeadingText(headingText: "Reset Password"),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    const DocumentText(
                        documentText: "Password must have 8-10 characters."),
                    SizedBox(
                      height: Get.height * .03,
                    ),
                   const FormHeadingText(formHeadingText: "New Password"),
                    CustomTextFormField(
                        prefixIcon: const Icon(Icons.key_sharp),
                        suffixIcon: const Icon(Icons.remove_red_eye),
                        hintText: "Enter Password",
                        controller: resetPassController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Field is impty";
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: Get.height * .03,
                    ),
                    const FormHeadingText(formHeadingText: "Confirm Password"),
                    CustomTextFormField(
                        prefixIcon: const Icon(Icons.key_sharp),
                        suffixIcon: const Icon(Icons.remove_red_eye),
                        hintText: "Enter Password",
                        controller: comfirmPassController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Field is impty";
                          } else {
                            return null;
                          }
                        }),
                    SizedBox(
                      height: Get.height / 10,
                    ),
                    CustomBodyButton(
                        buttonTitle: "Confirm",
                        ontap: () {
                        }),
                    SizedBox(
                      height: Get.height * .04,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
