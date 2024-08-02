import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/utils/app_image.dart';
import 'package:coupkart/widget/custom_body_button.dart';
import 'package:coupkart/widget/custom_text_field.dart';
import 'package:coupkart/widget/document_text.dart';
import 'package:coupkart/widget/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  RxBool onCheck = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
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
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * .05,
                    ),
                    const HeadingText(headingText: "Sign In"),
                    SizedBox(
                      height: Get.height * .02,
                    ),
                    const DocumentText(
                        documentText:
                            " Welcome Back! Please enter your details."),
                    SizedBox(
                      height: Get.height * .03,
                    ),
                    CustomTextFormField(
                        prefixIcon: const Icon(Icons.email),
                        keyboardType: TextInputType.emailAddress,
                        hintText: "Enter E-mail",
                        controller: emailController),
                    SizedBox(
                      height: Get.height * .03,
                    ),
                    CustomTextFormField(
                        prefixIcon: const Icon(Icons.key_sharp),
                        suffixIcon: const Icon(Icons.remove_red_eye),
                        hintText: "Enter Password",
                        controller: passController),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                            const DocumentText(documentText: "Remember Me")
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forget Password?',
                              style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: Get.height * .03,
                    ),
                    CustomBodyButton(buttonTitle: "Sign In", ontap: () {}),
                    SizedBox(
                      height: Get.height * .04,
                    ),

                    //bottom part starting here ==============================================>
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                        text: 'Don’t have an account?',
                        style: TextStyle(
                          color: AppColor.secondaryTxtColor,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      )
                    ])),

                    SizedBox(
                      height: Get.height * .02,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
