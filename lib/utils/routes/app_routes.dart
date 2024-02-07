import 'package:get/get.dart';
import 'package:sped/view/checkout/add_new_cart.dart';
import 'package:sped/view/checkout/checkout_page.dart';
import 'package:sped/view/checkout/delivary_address_details.dart';
import 'package:sped/view/checkout/delivery_map.dart';
import 'package:sped/view/home/home_screen.dart';
import 'package:sped/view/profile/add_address.dart';
import 'package:sped/view/profile/binding/profile_ctrl_binding.dart';
import 'package:sped/view/profile/edit_one_by_one.dart';
import 'package:sped/view/profile/edit_profile.dart';
import 'package:sped/view/profile/select_cities.dart';
import 'package:sped/view/profile/themes_page.dart';
import 'package:sped/view/restaurants/more_food_cat.dart';
import 'package:sped/view/restaurants/restaurant_details.dart';
import 'package:sped/view/restaurants/your_order.dart';
import 'package:sped/view/splash/onboardin.dart';
import 'package:sped/view/splash/splash.dart';
import 'package:sped/view/stores/binding/auth_binding.dart';
import 'package:sped/view/stores/check_email.dart';
import 'package:sped/view/stores/inner_product_page.dart';
import 'package:sped/view/stores/login_screen.dart';
import 'package:sped/view/profile/profile_details.dart';

class AppRoutes {
  static const String initialRoute = "/";
  static const String welcome = "/onboarding";
  static const String homePage = "/homePage";
  static const String innerProductPage = "/productDetails";
  static const String login = "/loginScreen";
  static const String checkEmail = "/checkEmailPage";
  static const String profileDetails = "/profileDetailsPage";
  static const String addAddress = "/addnewAddressPage";
  static const String addTheme = "/addThemePage";
  static const String selectCitiesOnMap = "/selectCitiesonMapPage";
  static const String editProfile = "/editProfilePage";
  static const String editOneByOne = "/editOneByOnePage";
  static const String restaurantDetails = "/restaurantDetailsPage";
  static const String moreFoodCategory = "/moreFoodCategoryPage";
  static const String yourOrder = "/yourOrderPage";
  static const String checkout = "/checkoutPage";
  static const String deliveryMap = "/deliveryMapPage";
  static const String deliveryAddressDetails = "/deliveryAddressDetailsPage";
  static const String addNewCart = "/addNewCartPage";

  static List<GetPage> pages = [
    GetPage(
      name: initialRoute,
      page: () => const SplashScreen(),
      // binding: InitialBindings(),
    ),
    GetPage(
      name: welcome,
      page: () => const OnboardingScreen(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: homePage,
      page: () => const HomeScreen(),
      binding: ProfileBinding(),
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
      binding: AuthBindings(),
    ),
    GetPage(
      name: addAddress,
      page: () => const AddNewAddressPage(),
    ),
    GetPage(
      name: addTheme,
      page: () => const ThemesPage(),
    ),
    GetPage(
      name: selectCitiesOnMap,
      page: () => const SelectCitiesOnMapPage(),
    ),
    GetPage(
      name: editProfile,
      page: () => const EditProfileScreen(),
    ),
    GetPage(
      name: editOneByOne,
      page: () => const EditOneByOneScreen(),
    ),
    GetPage(
      name: restaurantDetails,
      page: () => const RestaurantDetailsPage(),
    ),
    GetPage(
      name: moreFoodCategory,
      page: () => const MoreFoodCategoryPage(),
    ),
    GetPage(
      name: yourOrder,
      page: () => const YourOrderScreen(),
    ),
    GetPage(
      name: checkout,
      page: () => const CheckOutScreen(),
    ),
    GetPage(
      name: deliveryMap,
      page: () => const DeliveryMapPage(),
    ),
    GetPage(
      name: deliveryAddressDetails,
      page: () => const DeliveryAddressDetailsPage(),
    ),
    GetPage(
      name: addNewCart,
      page: () => const AddNewCartPage(),
    ),
  ];
}
