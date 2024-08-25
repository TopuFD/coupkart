import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/app_color.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.image,
      required this.desce,
      required this.bottomText,
      required this.price, this.ontap});

  final String image;
  final String desce;
  final String bottomText;
  final String price;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        height: Get.height * .3,
        width: Get.width * .45,
        child: InkWell(
          onTap: ontap,
          child: Card(
            color: AppColor.whiteColor,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * .02, vertical: Get.height * .01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.primaryTxtColor,width: 1),
                      borderRadius: BorderRadius.circular(22)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        image,
                        height: Get.height / 6,

                        width: Get.height / 6,
                        fit: BoxFit.cover,
                        
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .01,
                  ),
                  Text(
                    desce,
                    style: const TextStyle(
                      color: AppColor.primaryTxtColor,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: Get.height * .02,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        bottomText,
                        style: const TextStyle(
                          color: AppColor.primaryTxtColor,
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Text(
                        price,
                        style: const TextStyle(
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
        ),
      ),
    );
  }
}
