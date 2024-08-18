import 'package:coupkart/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormHeadingText extends StatelessWidget {
  final String formHeadingText;
  const FormHeadingText({super.key, required this.formHeadingText});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding:
            EdgeInsets.only(left: Get.width * .02, bottom: Get.width * .02),
        child: Text(
          formHeadingText,
          style: const TextStyle(
            color: AppColor.formHeadingTxtColor,
            fontSize: 16,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
    );
  }
}
