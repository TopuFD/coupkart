import 'package:coupkart/utils/app_color.dart';
import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String headingText;
  const HeadingText({super.key, required this.headingText});

  @override
  Widget build(BuildContext context) {
    return Text(
      headingText,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: AppColor.primaryTxtColor,
        fontSize: 22,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        height: 0,
      ),
    );
  }
}
