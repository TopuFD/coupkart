import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/utils/app_image.dart';
import 'package:coupkart/widget/deals_element.dart';
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Deals',
                      style: TextStyle(
                        color: AppColor.secondaryTxtColor,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
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
                        return SizedBox(
                          height: Get.height * .28,
                          width: Get.width * .45,
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * .02,
                                  vertical: Get.height * .01),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppImage.productOne,
                                    height: Get.height * .16,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    height: Get.height * .01,
                                  ),
                                  const Text(
                                    '20% Off Any 1/2 Jerk Meal With a Drink\n',
                                    style: TextStyle(
                                      color: AppColor.primaryTxtColor,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Pepper Grill & Bar',
                                        style: TextStyle(
                                          color: AppColor.primaryTxtColor,
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      Text(
                                        'Save  \$2',
                                        style: TextStyle(
                                          color: AppColor.primaryColor,
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                // food deals of home page start form here =========================================>
                SizedBox(
                  height: Get.height * .02,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Food',
                      style: TextStyle(
                        color: AppColor.secondaryTxtColor,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
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
                        return SizedBox(
                          height: Get.height * .28,
                          width: Get.width * .45,
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width * .02,
                                  vertical: Get.height * .01),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    AppImage.productTwo,
                                    height: Get.height * .16,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    height: Get.height * .01,
                                  ),
                                  const Text(
                                    '20% Off Any 1/2 Jerk Meal With a Drink\n',
                                    style: TextStyle(
                                      color: AppColor.primaryTxtColor,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Pepper Grill & Bar',
                                        style: TextStyle(
                                          color: AppColor.primaryTxtColor,
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      Text(
                                        'Save  \$2',
                                        style: TextStyle(
                                          color: AppColor.primaryColor,
                                          fontSize: 10,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
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
