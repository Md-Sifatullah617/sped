import 'package:get/get.dart';
import 'package:sped/view/home/home_screen.dart';
import 'package:sped/view/splash/onboardin.dart';
import 'package:sped/view/splash/splash.dart';
import 'package:sped/view/stores/check_email.dart';
import 'package:sped/view/stores/inner_product_page.dart';
import 'package:sped/view/stores/login_screen.dart';
import 'package:sped/view/stores/profile_details.dart';

class AppRoutes {
  static const String initialRoute = "/";
  static const String welcome = "/onboarding";
  static const String homePage = "/homePage";
  static const String innerProductPage = "/productDetails";
  static const String login = "/loginScreen";
  static const String checkEmail = "/checkEmailPage";
  static const String profileDetails = "/profileDetailsPage";

  static List<GetPage> pages = [
    GetPage(
      name: initialRoute,
      page: () => const SplashScreen(),
      // binding: InitialBindings(),
    ),
    GetPage(
      name: welcome,
      page: () => const OnboardingScreen(),
      // binding: InitialBindings(),
    ),
    GetPage(
      name: homePage,
      page: () => const HomeScreen(),
      // binding: HomePageBinding(),
    ),
    GetPage(
      name: innerProductPage,
      page: () => const InnerProductPage(),
    ),
    GetPage(
      name: login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: checkEmail,
      page: () => const CheckEmailPage(),
    ),
    GetPage(
      name: profileDetails,
      page: () => const ProfileDetailsPage(),
    ),
  ];
}
