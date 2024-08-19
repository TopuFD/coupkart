import 'package:coupkart/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileCustomBtn extends StatelessWidget {
  const ProfileCustomBtn(
      {super.key,
      required this.title,
      required this.leadingIcon,
      required this.trailingIcon, this.ontap});
  final String title;
  final Icon leadingIcon;
  final Icon trailingIcon;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height * .07,
        margin: EdgeInsets.only(bottom: Get.height * .02),
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
        child: ListTile(
          onTap: ontap,
          leading: leadingIcon,
          iconColor: AppColor.primaryColor,
          trailing: trailingIcon,
          title: Text(
            title,
            style: const TextStyle(
              color: AppColor.secondaryTxtColor,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ));
  }
}
