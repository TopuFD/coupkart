import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/utils/app_image.dart';
import 'package:coupkart/widget/heading_text.dart';
import 'package:coupkart/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewAllFood extends StatelessWidget {
  const ViewAllFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColor.whiteColor,
          centerTitle: true,
          title: const HeadingText(headingText: "Food"),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios_new)),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 0.78,
          ),
          itemCount: 30,
          padding: const EdgeInsets.all(8),
          itemBuilder: (context, index) {
            return SizedBox(
              height: Get.height * .28,
              child: const ProductCard(
                image: AppImage.productTwo,
                desce: "20% Off Any 1/2 Jerk Meal With a Drink\n",
                bottomText: "Pepper Grill & Bar",
                price: "Save  \$2",
              ),
            );
          },
        ));
  }
}
