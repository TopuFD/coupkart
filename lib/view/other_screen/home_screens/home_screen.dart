import 'package:coupkart/route/app_route.dart';
import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/utils/app_image.dart';
import 'package:coupkart/widget/deals_element.dart';
import 'package:coupkart/widget/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * .04),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Get.height * .01,
                ),
                const Text(
                  'Hello 👋👋',
                  style: TextStyle(
                    color: AppColor.secondaryTxtColor,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: Get.height * .01,
                ),
                const Text(
                  'Henry Johnson',
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: Get.height * .01,
                ),
                const Text(
                  'Explore Your Deals!!',
                  style: TextStyle(
                    color: AppColor.secondaryTxtColor,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),

                // Deal element of home page start form here =========================================>
                SizedBox(
                  height: Get.height * .01,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DealsElement(image: AppImage.dealsOne, title: "Food"),
                    DealsElement(
                        image: AppImage.dealsTwo, title: "Night Light"),
                    DealsElement(image: AppImage.dealsOne, title: "Activity"),
                    DealsElement(image: AppImage.dealsTwo, title: "Events")
                  ],
                ),

                // popular deals of home page start form here =========================================>
                SizedBox(
                  height: Get.height * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Popular Deals',
                      style: TextStyle(
                        color: AppColor.secondaryTxtColor,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoute.popularDeal);
                      },
                      child: const Text(
                        'View all',
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height * .01,
                ),
                SizedBox(
                  height: Get.height * .28,
                  width: Get.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const ProductCard(
                            image: AppImage.productOne,
                            desce: "20% Off Any 1/2 Jerk Meal With a Drink\n",
                            bottomText: "Pepper Grill & Bar",
                            price: "Save  \$2");
                      }),
                ),
                // food deals of home page start form here =========================================>
                SizedBox(
                  height: Get.height * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Food',
                      style: TextStyle(
                        color: AppColor.secondaryTxtColor,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoute.viewAllFood);
                      },
                      child: const Text(
                        'View all',
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height * .01,
                ),
                SizedBox(
                  height: Get.height * .28,
                  width: Get.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ProductCard(
                            ontap: () {},
                            image: AppImage.productTwo,
                            desce: "20% Off Any 1/2 Jerk Meal With a Drink\n",
                            bottomText: "Pepper Grill & Bar",
                            price: "Save  \$2");
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
