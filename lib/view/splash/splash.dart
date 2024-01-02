import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/utils/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    onReady();
    super.initState();
  }

  Future<void> onReady() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAllNamed(AppRoutes.welcome);
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
