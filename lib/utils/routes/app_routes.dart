import 'package:get/get.dart';
import 'package:sped/view/home/home_screen.dart';
import 'package:sped/view/splash/splash_screen.dart';
import 'package:sped/view/stores/inner_product_page.dart';
import 'package:sped/view/stores/login_screen.dart';

class AppRoutes {
  static const String initialRoute = "/";
  static const String homePage = "/homePage";
  static const String innerProductPage = "/productDetails";
  static const String login = "/loginScreen";

  static List<GetPage> pages = [
    GetPage(
      name: initialRoute,
      page: () => const SplashScreen(),
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
    )
  ];
}
