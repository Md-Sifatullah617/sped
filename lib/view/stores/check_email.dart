import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/custom_text_field.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/utils/routes/app_routes.dart';

class CheckEmailPage extends StatelessWidget {
  const CheckEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.05,
          vertical: Get.width * 0.06,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                height: Get.height * 0.05,
                width: Get.width * 0.1,
                decoration: const BoxDecoration(
                  color: AppColors.greyColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_back),
              ),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Image.asset(
              checkEmailIcon,
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Text(
              "Check your email!",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            const Text(
                "We sent an email to judy.mobbin@gmail.com with a magic link that’ll log you in."),
            SizedBox(
              height: Get.height * 0.02,
            ),
            PrimaryBtn(
                title: "I didn’t get an email",
                width: Get.width * 0.47,
                btnColor: AppColors.btnColor2,
                titleColor: AppColors.logoColor,
                onPressed: () {
                  Get.toNamed(AppRoutes.profileDetails);
                }),
            const Spacer(),
            PrimaryBtn(title: "Send magic link", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
