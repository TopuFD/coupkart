import 'package:coupkart/utils/app_color.dart';
import 'package:coupkart/widget/custom_appbar.dart';
import 'package:coupkart/widget/custom_text_field.dart';
import 'package:coupkart/widget/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class PaymentPage extends StatelessWidget {
  PaymentPage({super.key});

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController cardInfoController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController cvcController = TextEditingController();
  TextEditingController billAdressController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: "Payment"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * .02,
            ),
            const HeadingText(headingText: "Order Summery"),
            SizedBox(
              height: Get.height * .02,
            ),
            Table(
              columnWidths: const <int, TableColumnWidth>{
            0: FlexColumnWidth(2),
            1: FixedColumnWidth(100),
            2: FixedColumnWidth(90),
          },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
               TableRow(children: [
                  tableHeader("Item"),
                  tableHeader("Quantity"),
                  tableHeader("Price")
                ]),
                TableRow(children: [
                  cellText("Standard Plan"),
                  cellText("1"),
                  cellText("\$9.99"),
                ]),
                TableRow(children: [
                  
                  cellText("Total"),
                  Container(),
                  cellText("\$9.99"),
                ]),
              ],
            ),
            SizedBox(height: Get.height * .02,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * .1),
              child: const Divider(color: AppColor.primaryColor,),
            ),
            
            SizedBox(height: Get.height * .04,),

            
            //all payment data bellow here===================================================>
            const HeadingText(headingText: "Payment Information"),
            SizedBox(height: Get.height * .02,),
            SizedBox(
              width: Get.width,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: CustomTextFormField(
                          hintText: "First Name",
                          controller: firstNameController)),
                  SizedBox(
                    width: Get.width * .02,
                  ),
                  Expanded(
                      flex: 1,
                      child: CustomTextFormField(
                          hintText: "Last Name",
                          controller: lastNameController)),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * .02,
            ),
            CustomTextFormField(
                hintText: "Card Information",
                controller: cardInfoController),
            SizedBox(
              height: Get.height * .02,
            ),
            SizedBox(
              width: Get.width,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: CustomTextFormField(
                          hintText: "Exp Date",
                          controller: dateController)),
                  SizedBox(
                    width: Get.width * .02,
                  ),
                  Expanded(
                      flex: 1,
                      child: CustomTextFormField(
                          hintText: "CVC", controller: cvcController)),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * .02,
            ),
            CustomTextFormField(
                hintText: "Billing Adrress",
                controller: billAdressController),
            SizedBox(
              height: Get.height * .02,
            ),
            SizedBox(
              width: Get.width,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: CustomTextFormField(
                          hintText: "State", controller: dateController)),
                  SizedBox(
                    width: Get.width * .02,
                  ),
                  Expanded(
                      flex: 1,
                      child: CustomTextFormField(
                          hintText: "City", controller: cvcController)),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * .02,
            ),
            CustomTextFormField(
                hintText: "Postal Code", controller: billAdressController)
          ],
        ),
      ),
    );
  }

  Widget tableHeader(String headerTxt) {
    return Text(
      headerTxt,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Color(0xFF6B6B6B),
        fontSize: 18,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        height: 0,
      ),
    );
  }
  Widget cellText(String cellTxt) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height * .02),
      child: Text(
        cellTxt,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppColor.primaryTxtColor,
          fontSize: 18,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: 0,
        ),
      ),
    );
  }
}
