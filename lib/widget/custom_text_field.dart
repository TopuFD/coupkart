import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final TextInputType keyboardType;
  final bool obscureText;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  // ignore: non_constant_identifier_names
  final GlobalKey? Key;
  final String? textFieldHeading;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    // ignore: non_constant_identifier_names
    this.Key,
    this.textFieldHeading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      textFieldHeading == null
          ? Container()
          : Text(
              textFieldHeading!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColor.primaryTxtColor,
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
      Container(
        height: 42,
        padding: EdgeInsets.symmetric(
            horizontal: Get.width * .01, vertical: Get.height * .01),
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
        child: Form(
          key: key,
          child: TextFormField(
            controller: controller,
            validator: validator,
            keyboardType: keyboardType,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
          ),
        ),
      ),
    ]);
  }
}
