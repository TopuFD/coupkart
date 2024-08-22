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
  final Icon? suffixIcon;
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
      TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        obscureText: obscureText,
        
        decoration: InputDecoration(
          
            filled: true,
            fillColor: AppColor.greyColor,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: AppColor.secondaryColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: AppColor.secondaryColor)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: AppColor.secondaryColor)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: AppColor.secondaryColor)),
            contentPadding: EdgeInsets.only(left: Get.height * .02),
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            prefixIconColor: AppColor.secondaryColor,
            suffixIconColor: const Color.fromARGB(255, 138, 137, 137)),
      ),
    ]);
  }
}
