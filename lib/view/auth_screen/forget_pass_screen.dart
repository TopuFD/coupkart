import 'package:coupkart/route/app_route.dart';
import 'package:coupkart/widget/auth_top_item.dart';
import 'package:coupkart/widget/custom_body_button.dart';
import 'package:coupkart/widget/custom_text_field.dart';
import 'package:coupkart/widget/document_text.dart';
import 'package:coupkart/widget/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ForgetPassScreen extends StatelessWidget {
  ForgetPassScreen({super.key});

  TextEditingController emailController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();
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
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * .05,
                    ),
                    const HeadingText(headingText: "Forget Password"),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    const DocumentText(
                        documentText:
                            "Please enter your email address to reset\nyour password."),
                    SizedBox(
                      height: Get.height * .03,
                    ),
                    CustomTextFormField(
                      prefixIcon: const Icon(Icons.email),
                      keyboardType: TextInputType.emailAddress,
                      hintText: "Enter E-mail",
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Field is Empty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: Get.height / 4.5,
                    ),
                    CustomBodyButton(
                        buttonTitle: "Send OTP",
                        ontap: () {
                          Get.toNamed(AppRoute.otpCodeScreen);
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
