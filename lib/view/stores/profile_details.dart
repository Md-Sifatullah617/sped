import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';

class ProfileDetailsPage extends StatelessWidget {
  const ProfileDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
      ]),
    );
  }
}
