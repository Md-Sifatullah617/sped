import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/view/discover/controller/discrover_controller.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<DiscoverController>(
      init: DiscoverController(),
      builder: (controller) => Column(
        children: [
          //carousel slider and dot indicator
          Container(
            width: Get.width,
            height: Get.height * 0.4,
            child: Stack(
              children: [
                //carousel slider
                Positioned(
                  top: Get.height * 0.05,
                  left: Get.width * 0.05,
                  right: Get.width * 0.05,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: Get.height * 0.28,
                      autoPlay: true,
                      viewportFraction: 1,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        // Update the selected dot indicator
                        controller.currentIndex.value = index;
                      },
                    ),
                    items: controller.banner.map((item) {
                      return Container(
                        width: Get.width,
                        padding: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.05,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(Get.width * 0.05),
                          image: DecorationImage(
                            image: AssetImage(item["image"]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item["title"],
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: Get.width * 0.05,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.01,
                            ),
                            PrimaryBtn(
                                title: "Order Now",
                                btnColor: AppColors.black,
                                width: Get.width * 0.4,
                                radius: Get.width * 0.05,
                                onPressed: () {}),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
                // Custom dot indicator
                Positioned(
                  top: Get.height * 0.35,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: controller.banner.map((item) {
                      int index = controller.banner.indexOf(item);
                      return Obx(
                        () => Container(
                          width: Get.width * 0.02,
                          height: Get.width * 0.02,
                          margin: EdgeInsets.symmetric(
                              vertical: Get.width * 0.01,
                              horizontal: Get.width * 0.01),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: controller.currentIndex.value == index
                                ? AppColors.black
                                : AppColors.greyColor,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
