import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/utils/app_image.dart';
import 'package:coupkart/widget/custom_appbar.dart';
import 'package:coupkart/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewActivity extends StatelessWidget {
  const ViewActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
        appBar: const CustomAppbar(title: "Activity"),
        body: GridView.builder(
          physics: const BouncingScrollPhysics(),
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
                image: AppImage.activityPic,
                desce: "20% Off Any 1/2 Jerk Meal With a Drink\n",
                bottomText: "Pepper Grill & Bar",
                price: "Save  \$2",
              ),
            );
          },
        ));
  }
}
