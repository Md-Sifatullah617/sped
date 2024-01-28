import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/custom_text_field.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/utils/routes/app_routes.dart';
import 'package:sped/view/checkout/controller/checkout_controller.dart';
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
          // child: PrimaryBtn(
          //   onPressed: () {},
          //   title: "View order",
          //   titleColor: AppColors.white,
          //   width: Get.width,
          //   buttonHPadd: 0,
          //   btnColor: AppColors.logoColor,
          // ),
          padding: EdgeInsets.zero,
          height: Get.height * 0.06,
          child: GetBuilder<CheckoutController>(
            init: CheckoutController(),
            builder: (controller) => PrimaryBtn(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: Get.height * 0.8,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Get.width * 0.05),
                        topRight: Radius.circular(Get.width * 0.05),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Container(
                          height: Get.height * 0.005,
                          width: Get.width * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(
                              Get.width * 0.02,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.05,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Order derails",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          AppColors.btnColor2,
                                        ),
                                        padding: MaterialStateProperty.all(
                                            EdgeInsets.zero)),
                                    child: Text("Done",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.logoColor,
                                            )),
                                  ),
                                ],
                              ),
                              SizedBox(height: Get.height * 0.01),
                              Stack(
                                children: [
                                  Container(
                                    height: Get.height * 0.06,
                                    width: Get.width,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(
                                          Get.width * 0.05),
                                    ),
                                  ),
                                  Obx(
                                    () => Positioned(
                                      left: controller.isBtnBg.value
                                          ? null
                                          : Get.width * 0.01,
                                      right: controller.isBtnBg.value
                                          ? Get.width * 0.01
                                          : null,
                                      child: Container(
                                        height: Get.height * 0.04,
                                        width: Get.width * 0.5,
                                        margin: EdgeInsets.symmetric(
                                          horizontal: Get.width * 0.02,
                                          vertical: Get.height * 0.01,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              Get.width * 0.05),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: Get.height * 0.014,
                                    left: Get.width * 0.2,
                                    right: Get.width * 0.2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            controller.isBtnBg.value = false;
                                          },
                                          child: Text(
                                            "Delivery",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                  color: AppColors.black,
                                                ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            controller.isBtnBg.value = true;
                                          },
                                          child: Text(
                                            "Pickup",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                  color: AppColors.black,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: Get.height * 0.02),
                              Text(
                                "When?",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              ListTile(
                                visualDensity: VisualDensity.compact,
                                leading: Image.asset(
                                  clockIcon,
                                  height: Get.width * 0.07,
                                  width: Get.width * 0.07,
                                ),
                                title: Text(
                                  "As soon as possible",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                              ListTile(
                                visualDensity: VisualDensity.compact,
                                leading: Icon(Icons.calendar_month_rounded),
                                title: Text(
                                  "Today 11:15 (±10 min)",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                              Text(
                                "Choose custom date and time",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              SizedBox(
                                width: Get.width,
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: CustomTextField(
                                      hintText: "Date",
                                      height: Get.height * 0.06,
                                    )),
                                    SizedBox(width: Get.width * 0.02),
                                    Expanded(
                                        child: CustomTextField(
                                      hintText: "Time",
                                      height: Get.height * 0.06,
                                    )),
                                  ],
                                ),
                              ),
                              Text(
                                "Where to?",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              ListTile(
                                visualDensity: VisualDensity.compact,
                                leading: Image.asset(
                                  homeIcon,
                                  color: Colors.grey[300],
                                ),
                                title: Text(
                                  "Pasila",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                subtitle: Text(
                                  "Helsinki",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                              ListTile(
                                visualDensity: VisualDensity.compact,
                                leading: Image.asset(
                                  homeIcon,
                                  color: Colors.grey[300],
                                ),
                                title: Text(
                                  "Themmes",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                subtitle: Text(
                                  "Themmes",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                              ListTile(
                                visualDensity: VisualDensity.compact,
                                leading: Icon(Icons.work_outline_sharp),
                                title: Text(
                                  "Pursitie 7",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                subtitle: Text(
                                  "Joensuu",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                              ListTile(
                                visualDensity: VisualDensity.compact,
                                leading: Icon(Icons.list_alt_outlined),
                                title: Text(
                                  "Choose another address",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  isScrollControlled: true,
                );
              },
              title: "Schedule Order",
              btnColor: Color(0xff4B3C32),
              radius: 0,
            ),
          ),
          //  Container(
          //   height: Get.height * 0.06,
          //   width: Get.width,
          //   padding: EdgeInsets.symmetric(
          //     horizontal: Get.width * 0.05,
          //   ),
          //   decoration: BoxDecoration(
          //     color: AppColors.logoColor,
          //     borderRadius: BorderRadius.circular(Get.width * 0.02),
          //   ),
          //   child: Row(
          //     children: [
          //       Container(
          //         alignment: Alignment.center,
          //         padding: EdgeInsets.symmetric(
          //           horizontal: Get.width * 0.02,
          //         ),
          //         decoration: BoxDecoration(
          //           color: AppColors.orangeColor,
          //           borderRadius: BorderRadius.circular(Get.width * 0.02),
          //         ),
          //         child: Text(
          //           "€ 0.00",
          //           style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          //                 fontWeight: FontWeight.bold,
          //                 color: AppColors.white,
          //                 fontSize: Get.width * 0.05,
          //               ),
          //         ),
          //       ),
          //       const Spacer(),
          //       Text(
          //         "View order",
          //         style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          //               fontWeight: FontWeight.bold,
          //               color: AppColors.white,
          //               fontSize: Get.width * 0.05,
          //             ),
          //       ),
          //       const Spacer(),
          //       Container(
          //         alignment: Alignment.center,
          //         padding: EdgeInsets.symmetric(
          //           horizontal: Get.width * 0.02,
          //         ),
          //         decoration: BoxDecoration(
          //           color: AppColors.greyColor,
          //           shape: BoxShape.circle,
          //         ),
          //         child: Text(
          //           "1",
          //           style: Theme.of(context).textTheme.headlineMedium!.copyWith(
          //                 fontWeight: FontWeight.bold,
          //                 color: AppColors.logoColor,
          //                 fontSize: Get.width * 0.05,
          //               ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
