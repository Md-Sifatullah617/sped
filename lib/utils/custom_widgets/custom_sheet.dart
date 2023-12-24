import 'package:flutter/material.dart';
import 'package:get/get.dart';

void customBottomSheet(context) {
  Get.bottomSheet(
    Container(
      height: Get.height * 0.8,
      padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.02, vertical: Get.height * 0.02),
      color: Colors.white,
      child: Column(children: [
        Text(
          "Get started with Sped",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ]),
    ),
    isScrollControlled: true,
  );
}
