import 'package:coupkart/route/app_route.dart';
import 'package:coupkart/widget/custom_appbar.dart';
import 'package:coupkart/widget/profile_custom_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  final privacyPolicyLink =
      Uri.parse("https://sites.google.com/view/coupkart/home");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: "Settings"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * .03),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * .03,
            ),
            ProfileCustomBtn(
                ontap: () {
                  Get.toNamed(AppRoute.changePassScreen);
                },
                title: "Change Password",
                leadingIcon: const Icon(Icons.lock),
                trailingIcon: const Icon(Icons.keyboard_arrow_right)),
            ProfileCustomBtn(
                ontap: () {
                  launchUrl(privacyPolicyLink);
                },
                title: "Privacy Policy",
                leadingIcon: const Icon(Icons.privacy_tip),
                trailingIcon: const Icon(Icons.keyboard_arrow_right)),
            ProfileCustomBtn(
                ontap: () {
                  Get.toNamed(AppRoute.termsOfServices);
                },
                title: "Terms of Services",
                leadingIcon: const Icon(CupertinoIcons.exclamationmark_circle),
                trailingIcon: const Icon(Icons.keyboard_arrow_right)),
            ProfileCustomBtn(
                ontap: () {
                  Get.toNamed(AppRoute.aboutUs);
                },
                title: "About Us",
                leadingIcon: const Icon(CupertinoIcons.question_circle),
                trailingIcon: const Icon(Icons.keyboard_arrow_right)),
          ],
        ),
      ),
    );
  }
}
