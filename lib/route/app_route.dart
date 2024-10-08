import 'package:coupkart/view/auth_screen/forget_pass_screen.dart';
import 'package:coupkart/view/auth_screen/otp_code_screen.dart';
import 'package:coupkart/view/auth_screen/reset_pass_screen.dart';
import 'package:coupkart/view/auth_screen/signin_screen.dart';
import 'package:coupkart/view/auth_screen/signup_screen.dart';
import 'package:coupkart/view/explore_screen/places.dart';
import 'package:coupkart/view/home_screens/activity.dart';
import 'package:coupkart/view/home_screens/event.dart';
import 'package:coupkart/view/home_screens/night_light.dart';
import 'package:coupkart/view/home_screens/popular_deal.dart';
import 'package:coupkart/view/home_screens/product_details.dart';
import 'package:coupkart/view/home_screens/viewall_food.dart';
import 'package:coupkart/view/navigation_bar.dart';
import 'package:coupkart/view/profile_screens/edit_profileinfo.dart';
import 'package:coupkart/view/profile_screens/profile_info.dart';
import 'package:coupkart/view/setting_screens/about_us.dart';
import 'package:coupkart/view/setting_screens/change_pass.dart';
import 'package:coupkart/view/setting_screens/settings.dart';
import 'package:coupkart/view/setting_screens/terms_services.dart';
import 'package:coupkart/view/splash_screen/onbording_screen.dart';
import 'package:coupkart/view/splash_screen/splash.dart';
import 'package:coupkart/view/subscription_screens/payment.dart';
import 'package:coupkart/view/subscription_screens/subscription.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoute {
  static String splashScreen = "/splashScreen";
  static String onbordingScreen = "/onbordingScreen";
  static String signinScreen = "/signinScreen";
  static String forgetPassScreen = "/forgetPassScreen";
  static String otpCodeScreen = "/otpCodeScreen";
  static String resetPassScreen = "/resetPassScreen";
  static String signUpScreen = "/signUpScreen";
  static String navigationScreen = "/navigationScreen";
  static String profileInfo = "/profileInfo";
  static String editProfileInfo = "/editProfileInfo";
  static String subscriptionPage = "/subscriptionPage";
  static String paymentPage = "/paymentPage";
  static String settingScreen = "/settingScreen";
  static String changePassScreen = "/changePassScreen";
  static String termsOfServices = "/termsOfServices";
  static String aboutUs = "/aboutUs";
  static String popularDeal = "/popularDeal";
  static String viewAllFood = "/veiwAllFood";
  static String viewNightLight = "/viewNightLight";
  static String viewActivity = "/viewActivity";
  static String viewEvent = "/viewEvent";
  static String productDetails = "/productDetails";

  static String barOfPlaces = "/barOfPlaces";

  static List<GetPage> getPage = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: onbordingScreen, page: () => OnbordingScreen()),
    GetPage(name: signinScreen, page: () => SigninScreen()),
    GetPage(name: forgetPassScreen, page: () => ForgetPassScreen()),
    GetPage(name: otpCodeScreen, page: () => const OtpCodeScreen()),
    GetPage(name: resetPassScreen, page: () => ResetPassScreen()),
    GetPage(name: signUpScreen, page: () => SignupScreen()),
    GetPage(name: navigationScreen, page: () => BottomNavigationScreen()),
    GetPage(name: popularDeal, page: () => const PopularDeal()),
    GetPage(name: viewAllFood, page: () => const ViewAllFood()),
    GetPage(name: viewNightLight, page: () => const ViewNightLight()),
    GetPage(name: viewActivity, page: () => const ViewActivity()),
    GetPage(name: viewEvent, page: () => const ViewEvent()),
    GetPage(name: productDetails, page: () => ProductDetails()),
    GetPage(name: barOfPlaces, page: () => const BarOfPlaces()),
    GetPage(name: profileInfo, page: () => const ProfileInfo()),
    GetPage(name: editProfileInfo, page: () => EditProfileinfo()),
    GetPage(name: subscriptionPage, page: () => const SubscriptionPage()),
    GetPage(name: paymentPage, page: () => PaymentPage()),
    GetPage(name: settingScreen, page: () => SettingsPage()),
    GetPage(name: changePassScreen, page: () => ChangePassScreen()),
    GetPage(name: termsOfServices, page: () => const TermsofServices()),
    GetPage(name: aboutUs, page: () => const AboutUs()),
  ];
}
