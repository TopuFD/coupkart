import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DealsElement extends StatelessWidget {
  final String image;
  final String title;
  const DealsElement({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
        ),
        SizedBox(
          height: Get.height * .01,
        ),
        Text(title),
      ],
    );
  }
}
