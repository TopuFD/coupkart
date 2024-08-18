import 'package:coupkart/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBodyButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback ontap;

  const CustomBodyButton(
      {super.key, required this.buttonTitle, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * .06,
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
            backgroundColor: const WidgetStatePropertyAll(AppColor.primaryColor),
            overlayColor: const WidgetStatePropertyAll(AppColor.secondaryColor),
          ),
          onPressed: ontap,
          child: Text(
            buttonTitle,
            style: const TextStyle(
              color: AppColor.whiteColor,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          )),
    );
  }
}

