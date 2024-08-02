import 'package:carousel_slider/carousel_slider.dart';
import 'package:coupkart/controller/onbording_controller.dart';
import 'package:coupkart/route/app_route.dart';
import 'package:coupkart/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class OnbordingScreen extends StatelessWidget {
  OnbordingScreen({super.key});

  OnbordingController onbordingController = Get.put(OnbordingController());

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
          Expanded(child: Obx(() {
            return CarouselSlider(
                items: onbordingController.itemList
                    .map((item) => SizedBox(
                          child: item,
                        ))
                    .toList(),
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 1,
                  viewportFraction: 1,
                  initialPage: onbordingController.currentIndex.value,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (index, context) {
                    onbordingController.currentIndex.value = index;
                  },
                  scrollDirection: Axis.horizontal,
                ));
          })),
          onbordingController.carouselIndicator(),
          SizedBox(
            height: Get.height * .03,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(AppRoute.signinScreen);
            },
            child: Container(
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
          ),
          SizedBox(
            height: Get.height * .03,
          ),
        ],
      ),
    ));
  }
}
