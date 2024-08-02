import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCarouselItem extends StatelessWidget {
  final String image;
  final String heading;
  final String? headingPart;
  final String desce;
  const CustomCarouselItem({
    super.key,
    required this.image,
    required this.heading,
    this.headingPart,
    required this.desce,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: Get.height / 3,
              width: Get.width * .8,
            ),
            const SizedBox(
              height: 20,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: heading,
                    style: const TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 18,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: headingPart,
                    style: const TextStyle(
                      color: Color(0xFF69B3AD),
                      fontSize: 18,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              desce,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF414141),
                fontSize: 16,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
