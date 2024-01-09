import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/view/splash/controller/onboarding_controller.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<OnboardingController>(
      init: OnboardingController(),
      builder: (controller) => Stack(
        children: [
          Container(),
          Obx(() => Positioned(
                top: controller.currentPage.value == 1
                    ? Get.height * 0.05
                    : Get.height * 0.08,
                left: Get.width * 0.1,
                right: Get.width * 0.1,
                child: Image.asset(
                  controller.onBoardImageList[controller.currentPage.value],
                  // height: Get.height * 0.3,
                  // width: Get.width * 0.8,
                  fit: BoxFit.cover,
                ),
              )),
          Obx(() => Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.05,
                    vertical: Get.height * 0.02,
                  ),
                  height: controller.currentPage.value == 1
                      ? Get.height * 0.6
                      : Get.height * 0.566,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: AppColors.onboardBgc,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Get.width * 0.1),
                        topRight: Radius.circular(Get.width * 0.1),
                      )),
                  child:
                      controller.onBoardContent[controller.currentPage.value],
                ),
              )),
        ],
      ),
    ));
  }
}

class OnBoardContent1 extends StatelessWidget {
  const OnBoardContent1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      init: OnboardingController(),
      builder: (controller) {
        return Column(
          children: [
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
            Spacer(),
            PrimaryBtn(
                title: "Get Started",
                // hpadd: Get.width * 0.05,
                onPressed: () {
                  // customBottomSheet(context);
                  controller.currentPage.value = 1;
                }),
          ],
        );
      },
    );
  }
}
