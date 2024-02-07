import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/services/apiService/api_service.dart';
import 'package:sped/services/configs/appConfig.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/utils/routes/app_routes.dart';
import 'package:sped/utils/secure_storage.dart';
import 'package:sped/view/profile/model/user_details_model.dart';

class ProfileController extends GetxController {
  TextEditingController countryController = TextEditingController();
  TextEditingController storeFlagCode = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  var countryCode = "".obs;
  var isTandc = false.obs;
  var isSpecialOffer = false.obs;
  var isSpecialOffer2 = false.obs;
  var isTypingNum = false.obs;
  var isEditEmail = false.obs;
  var isEditName = false.obs;
  var isDeleteAccount = false.obs;
  var isApearence = false.obs;
  var isCreditToken = false.obs;
  var verificationPage = false.obs;
  var isWelcomePage = false.obs;
  var isLocationTypeSelected = "".obs;
  var keyIndex = 0.obs;
  var isExpanded = true.obs;
  var isLoading = false.obs;

  List<UserDetailsModel> userDetails = [];

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

  @override
  void onInit() {
    super.onInit();
    getUserProfile();
  }

  void getUserProfile() async {
    var token = data["data"]['api_token'];
    try {
      isLoading.value = true;
      final res = await ApiService.get(
        url: '/me',
        headers: {
          "Authorization": "Bearer $token",
          "Content-Type": "application/json",
        },
      );

      print(">>>>>>> ${res!.data}");
      print(">>>>>>> ${token}");

      if (res!.data != null) {
        if (res.statusCode == 200) {
          isLoading.value = false;
          userDetails.add(UserDetailsModel.fromJson(res.data));
        } else {
          isLoading.value = false;
        }
      }
    } catch (e) {
      isLoading.value = false;
      print(e);
    }
  }

  //post logout
  void logout() async {
    try {
      await ApiService.post(
        url: '/logout',
        headers: {
          "Authorization": "Bearer ${data["data"]['api_token']}",
          "Content-Type": "application/json",
        },
      );
    } catch (e) {
      print(e);
    }
    await SecureData.deleteAllSecureData();
    Get.offAllNamed(AppRoutes.welcome);
  }
}
