import 'package:coupkart/route/app_route.dart';
import 'package:coupkart/utils/app_image.dart';
import 'package:coupkart/widget/custom_appbar.dart';
import 'package:coupkart/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularDeal extends StatelessWidget {
  const PopularDeal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(title: "Popular Deals"),
        body: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 0.76,
          ),
          itemCount: 30,
          padding: EdgeInsets.all(Get.height * .01),
          itemBuilder: (context, index) {
            return ProductCard(
              ontap: () {
                Get.toNamed(AppRoute.productDetails,arguments: {
                  "imgPath": AppImage.productOne,
                    "heading": "20% Off Any 1/2 Jerk Meal With a Drink",
                    "desce": "Get a free wrap and Drink with any order of a bowl. Press redeem and show this Coupy Deal to a staff member to redeem."
                });
              },
              image: AppImage.productOne,
              desce: "20% Off Any 1/2 Jerk Meal With a Drink",
              bottomText: "Pepper Grill & Bar",
              price: "Save  \$2",
            );
          },
        ));
  }
}
