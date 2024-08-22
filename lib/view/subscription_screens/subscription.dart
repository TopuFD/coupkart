import 'package:coupkart/route/app_route.dart';
import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/utils/app_image.dart';
import 'package:coupkart/widget/custom_appbar.dart';
import 'package:coupkart/widget/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: "Subscription"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: Get.height * .03,
                ),
                Image.asset(AppImage.subscriptionPic),
                SizedBox(
                  height: Get.height * .02,
                ),
                const HeadingText(headingText: "Cayman Is Hard"),
                SizedBox(
                  height: Get.height * .02,
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(children: [
                      TextSpan(
                        text: 'Save ',
                        style: TextStyle(
                          color: AppColor.primaryColor,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text:
                            "money where you can. Join\nCoupKart Today and save at your favorite\nplaces in the Cayman Islands.",
                        style: TextStyle(
                          color: AppColor.primaryTxtColor,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ])),
                SizedBox(
                  height: Get.height * .08,
                ),
                subscriptionCart("Basic", 6.99, () {
                  Get.toNamed(AppRoute.paymentPage);
                }),
                subscriptionCart("Standard", 9.99, () {}),
                subscriptionCart("Premium", 13.99, () {}),
                subscriptionCart("Super Vip", 19.99, () {}),
                SizedBox(
                  height: Get.height * .02,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  //subscriptioncart=========================================================>
  Widget subscriptionCart(String dealType, num price, Function ontap) {
    return Container(
      width: Get.width / 1.4,
      margin: EdgeInsets.only(bottom: Get.height * .02),
      decoration: BoxDecoration(
          color: AppColor.primaryTxtColor,
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Get.height * .02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              dealType,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColor.secondaryColor,
                fontSize: 22,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            SizedBox(
              height: Get.height * .02,
            ),
            Text(
              '\$${price.toString()}/mo',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFFBADCD9),
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            SizedBox(
              height: Get.height * .02,
            ),
            const Divider(
              color: AppColor.secondaryColor,
            ),
            cartListTile("Exclusive Deals"),
            cartListTile("Event Giveaways"),
            cartListTile("Save mony"),
            cartListTile("Discover place"),
            SizedBox(
              height: Get.height * .02,
            ),
            const Text(
              'You Can’t Beat It !!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.whiteColor,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            SizedBox(
              height: Get.height * .02,
            ),
            InkWell(
              onTap: () {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  ontap();
                });
              },
              child: Container(
                height: Get.height * .06,
                width: Get.width / 1.8,
                decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    'Subscribe',
                    style: TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  //cartListtile==============================
  Widget cartListTile(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Get.width * .03, vertical: Get.height * .008),
      child: Row(
        children: [
          const Icon(
            Icons.check,
            color: AppColor.whiteColor,
          ),
          SizedBox(
            width: Get.width * .02,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          )
        ],
      ),
    );
  }
}
