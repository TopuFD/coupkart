import 'package:coupkart/view/other_screen/explore_screen/explore_screen.dart';
import 'package:coupkart/view/other_screen/favorite_pages/favourite_screen.dart';
import 'package:coupkart/view/other_screen/home_screens/home_screen.dart';
import 'package:coupkart/view/other_screen/profile_screens/profile_screen.dart';
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
