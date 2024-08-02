import 'package:carousel_slider/carousel_slider.dart';
import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/utils/app_image.dart';
import 'package:coupkart/widget/custom_carousel_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
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

  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: Get.height * .05,
          ),
          Expanded(
            child: CarouselSlider(
                items: itemList
                    .map((item) => SizedBox(
                          child: item,
                        ))
                    .toList(),
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 1,
                  viewportFraction: 1,
                  initialPage: currentIndex,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (index, context) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  scrollDirection: Axis.horizontal,
                )),
          ),
          carouselIndicator(),
          SizedBox(
            height: Get.height * .03,
          ),
          Container(
            height: 60,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: const Center(
                child: Text(
              "Get Started",
              style: TextStyle(fontSize: 20, color: Colors.white),
            )),
          ),
          SizedBox(
            height: Get.height * .03,
          ),
        ],
      ),
    ));
  }

  carouselIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < itemList.length; i++)
          Padding(
            padding: EdgeInsets.only(left: Get.width * .02),
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: i == currentIndex
                      ? AppColor.primaryColor
                      : AppColor.enableCarousel,
                  shape: BoxShape.circle),
            ),
          )
      ],
    );
  }
}
