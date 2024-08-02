import 'package:coupkart/utils/app_color.dart';
import 'package:flutter/material.dart';

class DocumentText extends StatelessWidget {
  final String documentText;
  const DocumentText({super.key, required this.documentText});

  @override
  Widget build(BuildContext context) {
    return Text(
      documentText,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: AppColor.secondaryTxtColor,
        fontSize: 16,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        height: 0,
      ),
    );
  }
}
