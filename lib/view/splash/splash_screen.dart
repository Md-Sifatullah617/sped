import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/custom_sheet.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: Get.height * 0.65,
              width: Get.width,
            ),
            Container(
              height: Get.height * 0.4,
              width: Get.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.spBG,
                    AppColors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Positioned(
                top: Get.height * 0.05,
                child: Image.asset(
                  splashPhoto,
                  fit: BoxFit.cover,
                )),
          ],
        ),
        SizedBox(
          height: Get.height * 0.05,
        ),
        Text(
          "Welcome to Sped",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
        Text(
          textAlign: TextAlign.center,
          "Enjoy the best restaurants or get what you need from nearby stores, delivered",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(
          height: Get.height * 0.08,
        ),
        PrimaryBtn(
            title: "Get Started",
            hpadd: Get.width * 0.05,
            onPressed: () {
              customBottomSheet(context);
            }),
      ],
    ));
  }
}
