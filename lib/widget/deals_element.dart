import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DealsElement extends StatelessWidget {
  const DealsElement({super.key, required this.image, required this.title, required this.ontap});
  final String image;
  final String title;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        child: Column(
          children: [
            Image.asset(
              image,
            ),
            SizedBox(
              height: Get.height * .01,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
