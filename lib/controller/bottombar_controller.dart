import 'package:coupkart/view/other_screen/explore_screen.dart';
import 'package:coupkart/view/other_screen/favourite_screen.dart';
import 'package:coupkart/view/other_screen/home_screen.dart';
import 'package:coupkart/view/other_screen/profile_screen.dart';
import 'package:get/get.dart';

class BottombarController extends GetxController {
  RxInt currentIndex = 0.obs;

  List pageList = [
    const HomeScreen(),
    const ExploreScreen(),
    const FavouriteScreen(),
    const ProfileScreen(),
  ];
}
