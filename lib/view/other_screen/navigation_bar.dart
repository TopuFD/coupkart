import 'package:coupkart/controller/bottombar_controller.dart';
import 'package:coupkart/utils/app_color.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class BottomNavigationScreen extends StatelessWidget {
  BottomNavigationScreen({super.key});

  BottombarController bottombarController = Get.put(BottombarController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: bottombarController
            .pageList[bottombarController.currentIndex.value],
        //bottom navigation part start from here===================================>
        bottomNavigationBar: Obx(
          () {
            return FloatingNavbar(
              currentIndex: bottombarController.currentIndex.value,
              onTap: (int val) {
                bottombarController.currentIndex.value = val;
              },
              items: [
                FloatingNavbarItem(icon: Icons.home, title: 'Home'),
                FloatingNavbarItem(icon: Icons.find_in_page, title: 'Explore'),
                FloatingNavbarItem(icon: Icons.favorite, title: 'Favorite'),
                FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
              ],
              backgroundColor: Colors.transparent,
              selectedItemColor: AppColor.whiteColor,
              unselectedItemColor: Colors.grey,
              selectedBackgroundColor: AppColor.primaryColor,
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
            );
          },
        ));
  }
}
