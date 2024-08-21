import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/widget/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails(
      {super.key,
      required this.imagePath,
      required this.headeing,
      required this.desce,
      required this.savePrice});
  final String imagePath;
  final String headeing;
  final String desce;
  final int savePrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: "Deal Details"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
        child: SizedBox(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * .03,
              ),
              Image.asset(
                imagePath,
                height: Get.height / 2.5,
                width: Get.width,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: Get.height * .03,
              ),
              Text(
                headeing,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  color: AppColor.primaryTxtColor,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              SizedBox(
                height: Get.height * .01,
              ),
              const Row(children: [
                Icon(
                  CupertinoIcons.location_solid,
                  color: AppColor.primaryTxtColor,
                ),
                Text(
                  '115B Printer Way',
                  style: TextStyle(
                    color: AppColor.secondaryTxtColor,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ]),
              SizedBox(
                height: Get.height * .04,
              ),
              Text(
                desce,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  color: AppColor.secondaryTxtColor,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              Text(
                'Save  \$${savePrice.toString()}',
                style: const TextStyle(
                  color: AppColor.primaryColor,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              const Expanded(child: SizedBox()),
              const SizedBox(
                child: Center(
                  child: Text(
                    'Redeem 1',
                    style: TextStyle(
                      color: AppColor.primaryTxtColor,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              Container(
                width: 342,
                height: 42,
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: AppColor.primaryTxtColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Redeem 🎉',
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
              SizedBox(
                height: Get.height * .01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
