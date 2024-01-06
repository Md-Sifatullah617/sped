import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/view/home/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) => Stack(
          children: [
            Obx(() => controller.screens[controller.currentIndex.value]),
            // bottom app bar
            Positioned(
              bottom: Get.height * 0.0,
              child: Container(
                height: Get.height * 0.08,
                width: Get.width,
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.05,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  // borderRadius: BorderRadius.circular(Get.width * 0.05),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                      controller.nabBarItems.length,
                      (index) => Obx(
                        () => InkWell(
                          onTap: () {
                            controller.currentIndex.value = index;
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                controller.nabBarItems[index]["icon"],
                                height: Get.height * 0.03,
                                color: controller.currentIndex.value == index
                                    ? AppColors.logoColor
                                    : AppColors.greyColor,
                              ),
                              Text(
                                controller.nabBarItems[index]["title"],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color:
                                          controller.currentIndex.value == index
                                              ? AppColors.logoColor
                                              : AppColors.greyColor,
                                    ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
