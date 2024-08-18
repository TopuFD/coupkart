import 'package:coupkart/view/auth_screen/forget_pass_screen.dart';
import 'package:coupkart/view/auth_screen/otp_code_screen.dart';
import 'package:coupkart/view/auth_screen/signin_screen.dart';
import 'package:coupkart/view/splash_screen/onbording_screen.dart';
import 'package:coupkart/view/splash_screen/splash.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoute {
  static String splashScreen = "/splashScreen";
  static String onbordingScreen = "/onbordingScreen";
  static String signinScreen = "/signinScreen";
  static String forgetPassScreen = "/forgetPassScreen";
  static String otpCodeScreen = "/otpCodeScreen";

  static List<GetPage> getPage = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: onbordingScreen, page: () => OnbordingScreen()),
    GetPage(name: signinScreen, page: () => SigninScreen()),
    GetPage(name: forgetPassScreen, page: () => ForgetPassScreen()),
    GetPage(name: otpCodeScreen, page: () => OtpCodeScreen()),
  ];
}
