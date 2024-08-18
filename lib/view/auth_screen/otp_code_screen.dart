import 'dart:async';
import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/widget/auth_top_item.dart';
import 'package:coupkart/widget/custom_body_button.dart';
import 'package:coupkart/widget/document_text.dart';
import 'package:coupkart/widget/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpCodeScreen extends StatefulWidget {
  const OtpCodeScreen({super.key});

  @override
  State<OtpCodeScreen> createState() => _OtpCodeScreenState();
}

class _OtpCodeScreenState extends State<OtpCodeScreen> {
  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  String currentText = "";

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    errorController = StreamController<ErrorAnimationType>();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    errorController?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const CustomAuthTopItem(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
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
                  PinCodeTextField(
                    appContext: context,
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      inactiveColor: const Color.fromARGB(66, 73, 73, 73),
                      inactiveFillColor: AppColor.whiteColor,
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: size.height * .07,
                      fieldWidth: size.width * .13,
                      activeFillColor: AppColor.whiteColor,
                    ),
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    errorAnimationController: errorController,
                    controller: textEditingController,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: (value) {
                      currentText = value;
                    },
                    beforeTextPaste: (text) {
                      return true;
                    },
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Didn’t receive the code?',
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      )),
                  SizedBox(
                    height: Get.height / 8,
                  ),
                  CustomBodyButton(buttonTitle: "Confirm", ontap: () {}),
                  SizedBox(
                    height: Get.height * .04,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
