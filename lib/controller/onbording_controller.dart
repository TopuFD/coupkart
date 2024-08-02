import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/utils/app_image.dart';
import 'package:coupkart/widget/custom_carousel_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnbordingController extends GetxController{
    var currentIndex = 0.obs;
  List itemList = [
    const CustomCarouselItem(
      image: AppImage.onbordingOne,
      heading: "WELCOME TO COUP ",
      headingPart: 'KART',
      desce:
          "Get more and more hot deals and discounts on food and restuarant near you !",
    ),
    const CustomCarouselItem(
      image: AppImage.onbordingTwo,
      heading: "Enjoy your ",
      headingPart: 'NIGHT',
      desce: "Get more and more hot deals and discounts near you !",
    ),
    const CustomCarouselItem(
      image: AppImage.onbordingThree,
      heading: "Great Deals on ",
      headingPart: 'Activity',
      desce: "Get more and more hot deals and discounts near you !",
    ),
    const CustomCarouselItem(
      image: AppImage.onbordingFour,
      heading: "Enjoy Events In Least cost",
      desce: "Get more and more hot deals and discounts near you !",
    ),
  ];

    carouselIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < itemList.length; i++)
          Padding(
              padding: EdgeInsets.only(left: Get.width * .02),
              child: Obx(() {
                return Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: i == currentIndex.value
                          ? AppColor.primaryColor
                          : AppColor.secondaryColor,
                      shape: BoxShape.circle),
                );
              }))
      ],
    );
  }
}