import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/utils/routes/app_routes.dart';
import 'package:sped/view/splash/controller/onboarding_controller.dart';

void customBottomSheet(context) {
  Get.bottomSheet(
    Container(
      height: Get.height * 0.9,
      width: Get.width,
      padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.05, vertical: Get.height * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Get.width * 0.05),
          topRight: Radius.circular(Get.width * 0.05),
        ),
      ),
      child: OnboardTwo(),
    ),
    isScrollControlled: true,
  );
}

class OnboardTwo extends StatelessWidget {
  const OnboardTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      init: OnboardingController(),
      builder: (controller) => Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: Get.height * 0.03,
              width: Get.height * 0.03,
              decoration: BoxDecoration(
                color: AppColors.greyColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.close,
                size: Get.height * 0.02,
              ),
            )
          ],
        ),
        Text(
          "Get started with Sped",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Text(
          "Please choose how you want to continue setting up your account 🤗",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        // SizedBox(
        //   height: Get.height * 0.01,
        // ),
        // Text(
        //   "Please visit Sped Privacy Statement in English to learn about personal data processing at Sped. You can access your local Privacy Statement related to your Sped account in the next phase of your registration after you have provided the country and language preferences applicable to you.",
        //   style: Theme.of(context).textTheme.titleSmall,
        // ),
        // SizedBox(
        //   height: Get.height * 0.05,
        // ),
        // PrimaryBtn(
        //     btnColor: AppColors.black,
        //     icon: Icons.apple,
        //     title: "Continue with Apple",
        //     onPressed: () {}),
        SizedBox(
          height: Get.height * 0.02,
        ),

        PrimaryBtn(
            btnColor: AppColors.white,
            iconImage: googleIcons,
            iconColor: AppColors.redColor,
            title: "Continue with Google",
            titleColor: AppColors.black,
            onPressed: () {}),
        SizedBox(
          height: Get.height * 0.02,
        ),
        PrimaryBtn(
            btnColor: AppColors.facebookColor,
            icon: FontAwesomeIcons.facebookF,
            title: "Continue with Facebook",
            onPressed: () {}),
        SizedBox(
          height: Get.height * 0.02,
        ),
        PrimaryBtn(
            btnColor: AppColors.logoColor,
            icon: Icons.email,
            iconColor: AppColors.white,
            title: "Continue with Email",
            titleColor: AppColors.white,
            onPressed: () {
              controller.currentPage.value = 2;
            }),
        SizedBox(
          height: Get.height * 0.05,
        ),
        PrimaryBtn(
            title: "Explore Nearby",
            titleColor: AppColors.logoColor,
            btnColor: AppColors.white,
            onPressed: () {
              Get.toNamed(AppRoutes.homePage);
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Visit Sped"),
            TextButton(
              onPressed: () {},
              child: Text("Privacy Policy",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: AppColors.logoColor,
                      )),
            )
          ],
        )
      ]),
    );
  }
}
