import 'package:coupkart/route/app_route.dart';
import 'package:coupkart/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/app_image.dart';
import '../../widget/product_card.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.whiteColor,
          automaticallyImplyLeading: false,
          title: const Text(
            "Favourite Deals",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColor.primaryTxtColor,
              fontSize: 22,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          centerTitle: true,
        ),
        body: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 0.76,
          ),
          itemCount: 30,
          padding: const EdgeInsets.all(8),
          itemBuilder: (context, index) {
            return SizedBox(
              height: Get.height * .28,
              child: ProductCard(
                ontap: () {
                  Get.toNamed(AppRoute.productDetails,arguments: {
                  "imgPath": AppImage.eventPic,
                    "heading": "20% Off Any 1/2 Jerk Meal With a Drink",
                    "desce": "Get a free wrap and Drink with any order of a bowl. Press redeem and show this Coupy Deal to a staff member to redeem."
                });
                },
                image: AppImage.eventPic,
                desce: "20% Off Any 1/2 Jerk Meal With a Drink",
                bottomText: "Pepper Grill & Bar",
                price: "Save  \$2",
              ),
            );
          },
        ));
  }
}
