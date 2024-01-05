import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/photos.dart';

class ProfileController extends GetxController {
  TextEditingController countryController = TextEditingController();
  TextEditingController storeFlagCode = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  var isTypingNum = false.obs;
  var verificationPage = false.obs;
  var isWelcomePage = false.obs;
  var isLocationTypeSelected = "".obs;
  var keyIndex = 0.obs;
  var isExpanded = false.obs;

  void selectLocationType(String type) {
    isLocationTypeSelected.value = type;
    keyIndex.value++;
    isExpanded.value = false;
    print(keyIndex.value);
  }

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
