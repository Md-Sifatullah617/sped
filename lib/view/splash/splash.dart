import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/services/configs/appConfig.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/utils/routes/app_routes.dart';
import 'package:sped/utils/secure_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onReady();
    });
    super.initState();
  }

  Future<void> onReady() async {
    var data0 = await SecureData.readSecureData(key: "userlogindetails");
    print("Data: $data");
    await Future.delayed(const Duration(seconds: 3));
    if (data0 != null && data0["data"]['api_token'] != null) {
      data = data0;
      Get.offAllNamed(AppRoutes.homePage);
    } else {
      Get.offAllNamed(AppRoutes.welcome);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BounceInDown(child: Image.asset(logo)),
      ),
    );
  }
}
