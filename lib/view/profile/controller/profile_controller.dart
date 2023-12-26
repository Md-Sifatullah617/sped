import 'package:get/get.dart';
import 'package:sped/utils/photos.dart';

class ProfileController extends GetxController {
  var name = "Md. Sifatullah".obs;
  var email = "sifatullahsanowar1@gmail.com".obs;

  List profileOptions = [
    {
      "title": "My Profile",
      "icon": profileIcon,
    },
    {
      "title": "My Orders",
      "icon": documentIcon,
    },
    {
      "title": "Delivery Address",
      "icon": locationindicator2,
    },
    {
      "title": "Payment Methods",
      "icon": walletIcon,
    },
    {
      "title": "Contact Us",
      "icon": mailIcon,
    },
    {
      "title": "Settings",
      "icon": settingsIcon,
    },
    {
      "title": "Help & FAQ",
      "icon": faqIcon,
    },
  ];
}
