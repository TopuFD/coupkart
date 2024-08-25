import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/utils/app_image.dart';
import 'package:coupkart/widget/custom_appbar.dart';
import 'package:coupkart/widget/custom_body_button.dart';
import 'package:coupkart/widget/document_text.dart';
import 'package:coupkart/widget/heading_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ProductDetails extends StatelessWidget {
  ProductDetails({
    super.key,
  });
  final Map<String, dynamic> productData = Get.arguments;
  int redeemValu = 1;
  bool redeemTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: "Deal Details"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .07),
        child: SizedBox(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * .03,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Image.asset(
                      productData["imgPath"],
                      height: Get.height / 2.5,
                      width: Get.width,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                        right: 0,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: AppColor.whiteColor,
                              size: 54,
                            )))
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * .03,
              ),
              Text(
                productData["heading"],
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
                productData["desce"],
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
              const Text(
                'Save  \$2}',
                style: TextStyle(
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
              InkWell(
                onTap: () {
                  bottomSheet(context);
                },
                child: Container(
                  width: Get.width /1.1,
                  height: Get.height * .055,
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

  //bottom sheet here=============================================>
  bottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        )),
        isScrollControlled: true,
        enableDrag: false,
        isDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: Get.height / 1.4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: Get.height * .15,
                      width: Get.width,
                      decoration: const BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          )),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: Get.height * .06),
                            child: Image.asset(
                              AppImage.appLogo,
                              height: 90,
                            ),
                          )),
                    ),
                    Positioned(
                        top: Get.height * .02,
                        right: Get.width * .02,
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.cancel_outlined,
                              color: Color(0xFF606060),
                              size: 30,
                            )))
                  ],
                ),
                SizedBox(
                  height: Get.height * .04,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width * .07,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeadingText(
                          headingText: "Try New Places & Save Now"),
                      const Text(
                        'Just for \$6.99/mo',
                        style: TextStyle(
                          color: AppColor.secondaryTxtColor,
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * .04,
                      ),
                      bottomSheetElement(AppImage.exitingDeal,
                          "Exciting Deals !!", const Color(0x484CA49D)),
                      bottomSheetElement(
                          AppImage.exitingDeal,
                          "Find Amazing places near you !",
                          const Color(0x484CA49D)),
                      bottomSheetElement(AppImage.saveMony, "Save Money !!",
                          Colors.transparent),
                      SizedBox(
                        height: Get.height * .02,
                      ),
                      SizedBox(
                          width: Get.width / 1.2,
                          child: const DocumentText(
                              documentText:
                                  "Please Subscribe to enjoy our popular and remarkable deals and save some money today")),
                      SizedBox(
                        height: Get.height * .04,
                      ),
                      CustomBodyButton(buttonTitle: "Subscribe", ontap: () {}),
                      SizedBox(
                        height: Get.height * .01,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  //bottomsheet element here ============================================>
  Widget bottomSheetElement(String imagePath, String desce, Color color) {
    return Padding(
      padding: EdgeInsets.only(bottom: Get.height * .02),
      child: Row(
        children: [
          Image.asset(imagePath),
          SizedBox(
            width: Get.width * .02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                desce,
                style: const TextStyle(
                  color: AppColor.secondaryTxtColor,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              SizedBox(
                height: Get.height * .001,
              ),
              SizedBox(
                  width: Get.width / 1.6,
                  child: Divider(
                    color: color,
                    height: 1,
                    thickness: 1,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
