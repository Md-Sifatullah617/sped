import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/custom_text_field.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/utils/routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.05,
          vertical: Get.width * 0.06,
        ),
        child: Onboard2(),
      ),
    );
  }
}

class Onboard2 extends StatelessWidget {
  const Onboard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        // InkWell(
        //   onTap: () {
        //     Get.back();
        //   },
        //   child: Container(
        //     height: Get.height * 0.05,
        //     width: Get.width * 0.1,
        //     decoration: const BoxDecoration(
        //       color: AppColors.greyColor,
        //       shape: BoxShape.circle,
        //     ),
        //     child: const Icon(Icons.arrow_back),
        //   ),
        // ),
        // Image.asset(
        //   shareIcon,
        // ),
        // SizedBox(
        //   height: Get.height * 0.02,
        // ),
        Text(
          "Continue with email",
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
        const Text(
            "We’ll send you an email with a magic link that’ll log you in right away."),
        SizedBox(
          height: Get.height * 0.02,
        ),
        const CustomTextField(
          hintText: "Email",
          suffixWidget: Icon(
            FontAwesomeIcons.solidCircleXmark,
            color: AppColors.greyColor,
          ),
        ),
        const Spacer(),
        PrimaryBtn(
            title: "Send magic link",
            onPressed: () {
              Get.toNamed(AppRoutes.profileDetails);
            })
      ],
    );
  }
}
