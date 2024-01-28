import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/utils/routes/app_routes.dart';
import 'package:sped/view/restaurants/controller/restaurant_controller.dart';

class RestaurantDetailsPage extends StatelessWidget {
  const RestaurantDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RestaurantController>(
      init: RestaurantController(),
      builder: (controller) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    Get.arguments["image"],
                    width: Get.width,
                    height: Get.height * 0.35,
                    fit: BoxFit.cover,
                  ),
                  //back and menu button
                  Positioned(
                    top: Get.height * 0.02,
                    left: Get.width * 0.05,
                    right: Get.width * 0.05,
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              AppColors.greyColor3,
                            ),
                            shape: MaterialStateProperty.all(
                              const CircleBorder(),
                            ),
                          ),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.menu),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              AppColors.greyColor3,
                            ),
                            shape: MaterialStateProperty.all(
                              const CircleBorder(),
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: Get.width,
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.05,
                  vertical: Get.width * 0.02,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.05,
                  vertical: Get.height * 0.02,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(Get.width * 0.05),
                ),
                child: Column(
                  children: [
                    ListTile(
                      visualDensity: VisualDensity.compact,
                      contentPadding: EdgeInsets.zero,
                      title: Text(Get.arguments["title"],
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: Get.width * 0.05,
                              )),
                      subtitle: Text(
                        Get.arguments["description"],
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      trailing: Icon(
                        Icons.favorite_border,
                        size: Get.width * 0.07,
                      ),
                    ),
                    ListTile(
                      visualDensity: VisualDensity.compact,
                      contentPadding: EdgeInsets.zero,
                      leading: Image.asset(
                        faceIcon,
                        height: Get.width * 0.07,
                        width: Get.width * 0.07,
                      ),
                      title: const Text("Not rated yet"),
                    ),
                    ListTile(
                      visualDensity: VisualDensity.compact,
                      contentPadding: EdgeInsets.zero,
                      leading: Image.asset(
                        clockIcon,
                        height: Get.width * 0.07,
                        width: Get.width * 0.07,
                      ),
                      title: const Text("Open . Closes at 20:30"),
                      trailing: PrimaryBtn(
                        onPressed: () {},
                        title: "More Info",
                        titleColor: AppColors.logoColor,
                        width: Get.width * 0.23,
                        height: Get.height * 0.04,
                        buttonHPadd: 0,
                        btnColor: AppColors.btnColor2,
                      ),
                    ),
                    ListTile(
                      visualDensity: VisualDensity.compact,
                      contentPadding: EdgeInsets.zero,
                      leading: Image.asset(
                        riderIcon,
                        height: Get.width * 0.07,
                        width: Get.width * 0.07,
                      ),
                      title: const Text("Delivery in 20 - 30 min"),
                      trailing: PrimaryBtn(
                        onPressed: () {},
                        title: "Change",
                        titleColor: AppColors.logoColor,
                        width: Get.width * 0.18,
                        height: Get.height * 0.04,
                        buttonHPadd: 0,
                        btnColor: AppColors.btnColor2,
                      ),
                    ),
                    ListTile(
                      visualDensity: VisualDensity.compact,
                      contentPadding: EdgeInsets.zero,
                      leading: Image.asset(
                        togetherIcon,
                        height: Get.width * 0.07,
                        width: Get.width * 0.07,
                      ),
                      title: const Text("Limited delivery tracking only"),
                      trailing: PrimaryBtn(
                        onPressed: () {},
                        title: "More Info",
                        titleColor: AppColors.logoColor,
                        width: Get.width * 0.23,
                        height: Get.height * 0.04,
                        buttonHPadd: 0,
                        btnColor: AppColors.btnColor2,
                      ),
                    ),
                  ],
                ),
              ),
              //outer scrolling off
              Container(
                height: Get.height * 0.88,
                width: Get.width,
                //inner scrolling on
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Obx(
                          () => Row(
                            children: [
                              SizedBox(width: Get.width * 0.02),
                              ...List.generate(
                                  controller.foodList.length,
                                  (index) => InkWell(
                                        onTap: () {
                                          controller.selectedFoodIndex.value =
                                              index;
                                        },
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                            horizontal: Get.width * 0.02,
                                            vertical: Get.height * 0.01,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: Get.width * 0.05,
                                            vertical: Get.height * 0.01,
                                          ),
                                          decoration: BoxDecoration(
                                            color: controller.selectedFoodIndex
                                                        .value ==
                                                    index
                                                ? AppColors.btnColor2
                                                : AppColors.greyColor3,
                                            borderRadius: BorderRadius.circular(
                                                Get.width * 0.05),
                                          ),
                                          child: Text(
                                            controller.foodList[index],
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall,
                                          ),
                                        ),
                                      )),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: Get.height * 0.06,
                        margin: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.05,
                          vertical: Get.height * 0.02,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.02,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(Get.width * 0.02),
                        ),
                        child: TextField(
                          onTap: () {},
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: const Icon(Icons.search),
                            hintText: "Search ${Get.arguments["title"]}",
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.05,
                        ),
                        child: Obx(
                          () => Text(
                            controller
                                .foodList[controller.selectedFoodIndex.value],
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Get.width * 0.05,
                                ),
                          ),
                        ),
                      ),
                      SizedBox(height: Get.height * 0.02),
                      ...List.generate(
                          controller.pizzatList.length,
                          (index) => ListTile(
                                onTap: () {
                                  Get.toNamed(AppRoutes.moreFoodCategory,
                                      arguments: {
                                        "restaurantName":
                                            Get.arguments["title"],
                                        "moreCategories":
                                            controller.pizzatList[index],
                                      });
                                },
                                title: Text(
                                  "${index + 1}. ${controller.pizzatList[index]["name"]}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: Get.width * 0.04,
                                      ),
                                ),
                                subtitle: Text(
                                  controller.pizzatList[index]["ingredents"],
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                trailing: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(Get.width * 0.02),
                                  child: Image.asset(
                                    controller.pizzatList[index]["image"],
                                    height: Get.height * 0.1,
                                    width: Get.height * 0.1,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                      SizedBox(height: Get.height * 0.02),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.05,
                        ),
                        child: Text(
                          "Happy Hour",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: Get.width * 0.05,
                              ),
                        ),
                      ),
                      SizedBox(height: Get.height * 0.02),
                      ...List.generate(
                          controller.pizzatList.length,
                          (index) => ListTile(
                                onTap: () {
                                  Get.toNamed(AppRoutes.moreFoodCategory,
                                      arguments: {
                                        "restaurantName":
                                            Get.arguments["title"],
                                        "moreCategories":
                                            controller.pizzatList[index],
                                      });
                                },
                                title: Text(
                                  "${index + 1}. ${controller.pizzatList[index]["name"]}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: Get.width * 0.04,
                                      ),
                                ),
                                subtitle: Text(
                                  controller.pizzatList[index]["ingredents"],
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                trailing: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(Get.width * 0.02),
                                  child: Image.asset(
                                    controller.pizzatList[index]["image"],
                                    height: Get.height * 0.1,
                                    width: Get.height * 0.1,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: Get.height * 0.06,
            width: Get.width,
            padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.05,
            ),
            decoration: BoxDecoration(
              color: AppColors.logoColor,
              borderRadius: BorderRadius.circular(Get.width * 0.02),
            ),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.orangeColor,
                    borderRadius: BorderRadius.circular(Get.width * 0.02),
                  ),
                  child: Text(
                    "€ 0.00",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                          fontSize: Get.width * 0.05,
                        ),
                  ),
                ),
                const Spacer(),
                Text(
                  "View order",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                        fontSize: Get.width * 0.05,
                      ),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.greyColor,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "1",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.logoColor,
                          fontSize: Get.width * 0.05,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
