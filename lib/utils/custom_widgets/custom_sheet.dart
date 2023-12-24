import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/routes/app_routes.dart';

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
      child: Column(children: [
        Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () {
                Get.back();
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.greyColor),
              ),
              icon: const Icon(Icons.close),
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
          height: Get.height * 0.02,
        ),
        Text(
          "Please choose how you want to continue setting up your account",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Text(
          "Please visit Sped Privacy Statement in English to learn about personal data processing at Sped. You can access your local Privacy Statement related to your Sped account in the next phase of your registration after you have provided the country and language preferences applicable to you.",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(
          height: Get.height * 0.05,
        ),
        PrimaryBtn(
            btnColor: AppColors.black,
            icon: Icons.apple,
            title: "Continue with Apple",
            onPressed: () {}),
        SizedBox(
          height: Get.height * 0.02,
        ),
        PrimaryBtn(
            btnColor: AppColors.facebookColor,
            icon: Icons.facebook,
            title: "Continue with Facebook",
            onPressed: () {}),
        SizedBox(
          height: Get.height * 0.02,
        ),
        PrimaryBtn(
            btnColor: AppColors.white,
            icon: FontAwesomeIcons.google,
            iconColor: AppColors.redColor,
            title: "Continue with Google",
            titleColor: AppColors.logoColor,
            onPressed: () {}),
        SizedBox(
          height: Get.height * 0.02,
        ),
        PrimaryBtn(
            btnColor: AppColors.greyColor,
            icon: Icons.email,
            iconColor: AppColors.black,
            title: "Continue with Email",
            titleColor: AppColors.black,
            onPressed: () {}),
        SizedBox(
          height: Get.height * 0.05,
        ),
        PrimaryBtn(
            title: "Continue as a Guest",
            onPressed: () {
              Get.toNamed(AppRoutes.homePage);
            }),
      ]),
    ),
    isScrollControlled: true,
  );
}
