import 'package:coupkart/route/app_route.dart';
import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/widget/auth_top_item.dart';
import 'package:coupkart/widget/custom_body_button.dart';
import 'package:coupkart/widget/custom_text_field.dart';
import 'package:coupkart/widget/document_text.dart';
import 'package:coupkart/widget/form_heading_text.dart';
import 'package:coupkart/widget/heading_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();
  RxBool onCheck = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
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
                      height: Get.height * .04,
                    ),
                    const HeadingText(headingText: "Create Account"),
                    SizedBox(
                      height: Get.height * .01,
                    ),
                    const DocumentText(
                        documentText:
                            "Fill the information to create a new account."),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    const FormHeadingText(formHeadingText: "Your Name"),
                    CustomTextFormField(
                      prefixIcon: const Icon(Icons.email),
                      keyboardType: TextInputType.emailAddress,
                      hintText: "Enter Your Name",
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Field is impty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    const FormHeadingText(formHeadingText: "Enter E-mail"),
                    CustomTextFormField(
                      prefixIcon: const Icon(Icons.email),
                      keyboardType: TextInputType.emailAddress,
                      hintText: "Enter E-mail",
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Field is impty";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    const FormHeadingText(formHeadingText: "Confirm Password"),
                    CustomTextFormField(
                        prefixIcon: const Icon(Icons.key_sharp),
                        suffixIcon: const Icon(Icons.remove_red_eye),
                        hintText: "Enter Your Password",
                        controller: passController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Field is impty";
                          } else {
                            return null;
                          }
                        }),

                    Row(
                      children: [
                        Obx(() {
                          return Checkbox(
                              activeColor: AppColor.primaryColor,
                              value: onCheck.value,
                              onChanged: (checkValue) {
                                onCheck.value = checkValue!;
                              });
                        }),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: "Agree with",
                            style: TextStyle(
                              color: AppColor.formHeadingTxtColor,
                              fontSize: 16,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: "Terms of Services",
                            style: TextStyle(
                              color: AppColor.primaryColor,
                              fontSize: 16,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          )
                        ]))
                      ],
                    ),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    CustomBodyButton(buttonTitle: "Sign UP", ontap: () {}),
                    SizedBox(
                      height: Get.height * .01,
                    ),

                    //bottom part starting here ==============================================>
                    RichText(
                        text: TextSpan(children: [
                      const TextSpan(
                        text: 'Already have an account?',
                        style: TextStyle(
                          color: AppColor.secondaryTxtColor,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                          text: 'Sign in',
                          style: const TextStyle(
                            color: AppColor.primaryColor,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(AppRoute.signinScreen);
                            })
                    ])),
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
