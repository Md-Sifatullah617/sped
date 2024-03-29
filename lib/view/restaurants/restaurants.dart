import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/utils/routes/app_routes.dart';
import 'package:sped/view/restaurants/controller/restaurant_controller.dart';
import '../../utils/colors.dart';

class RestaurantsScreen extends StatelessWidget {
  const RestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          leading: IconButton(
            icon: Image.asset(
              homeIcon,
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.btnColor2),
            ),
            onPressed: () {},
          ),
          title: Row(
            children: [
              Text(
                "Soekarno Hatta 15A",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: AppColors.logoColor,
                    ),
              ),
              SizedBox(
                width: Get.width * 0.02,
              ),
              Image.asset(
                dropDownArrow,
              )
            ],
          ),
          actions: [
            IconButton(
              icon: Image.asset(
                filterIcon,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset(
                mapIcon,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: GetBuilder<RestaurantController>(
          init: RestaurantController(),
          builder: (controller) {
            return SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.05,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Restaurants",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          SizedBox(
                            height: Get.height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Categories",
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: Get.width * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              PrimaryBtn(
                                  title: "See All",
                                  titleColor: AppColors.logoColor,
                                  width: Get.width * 0.22,
                                  height: Get.height * 0.04,
                                  btnColor: AppColors.btnColor2,
                                  onPressed: () {}),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    SizedBox(
                      height: Get.height * 0.22,
                      child: ListView.builder(
                        itemCount: controller.catagoryDetailsList.data!.length,
                        shrinkWrap: true,
                        padding: EdgeInsets.only(
                          left: Get.width * 0.05,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: Get.width * 0.05,
                                vertical: Get.height * 0.01,
                              ),
                              margin: EdgeInsets.only(
                                right: Get.width * 0.05,
                              ),
                              height: Get.height * 0.15,
                              width: Get.width * 0.3,
                              decoration: BoxDecoration(
                                color: AppColors.btnColor2,
                                borderRadius:
                                    BorderRadius.circular(Get.width * 0.02),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    controller.catagoryDetailsList.data![index]
                                        .categoryImage!,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              controller.catagoryDetailsList.data![index]
                                  .categoryName!,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              controller.catagoryDetailsList.data![index]
                                  .categoryRestaurantsCount!,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.05,
                      ),
                      child: Text(
                        "All Restaurants",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: Get.width * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ...List.generate(
                      controller.restaurantDetailsList.data!.length,
                      (index) => InkWell(
                        onTap: () {
                          Get.toNamed(
                            AppRoutes.restaurantDetails,
                            arguments: index,
                          );
                        },
                        child: Container(
                            height: Get.height * 0.38,
                            width: Get.width,
                            margin: EdgeInsets.symmetric(
                              horizontal: Get.width * 0.05,
                              vertical: Get.height * 0.02,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius:
                                  BorderRadius.circular(Get.width * 0.05),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.greyColor.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft:
                                            Radius.circular(Get.width * 0.05),
                                        topRight:
                                            Radius.circular(Get.width * 0.05),
                                      ),
                                      child: Container(
                                        height: Get.height * 0.25,
                                        width: Get.width,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(controller
                                                .restaurantDetailsList
                                                .data![index]
                                                .restaurantImage!),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: Container(
                                          color: controller
                                                      .restaurantDetailsList
                                                      .data![index]
                                                      .restaurantStatus ==
                                                  "Open"
                                              ? Colors.transparent
                                              : AppColors.logoColor.withOpacity(
                                                  0.2), // adjust color and opacity as needed
                                          child: controller
                                                      .restaurantDetailsList
                                                      .data![index]
                                                      .restaurantStatus ==
                                                  "Open"
                                              ? null
                                              : Center(
                                                  child: Text(
                                                    "Closed",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleLarge!
                                                        .copyWith(
                                                          color: AppColors
                                                              .logoColor,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                        ),
                                      ),
                                    ),
                                    //isfav icon top right corner
                                    Positioned(
                                      top: Get.height * 0.01,
                                      right: Get.width * 0.03,
                                      child: Container(
                                        height: Get.height * 0.05,
                                        width: Get.width * 0.1,
                                        decoration: const BoxDecoration(
                                          color: AppColors.logoColor,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.favorite,
                                          color: AppColors.white,
                                          size: Get.width * 0.07,
                                        ),
                                      ),
                                    ),
                                    if (controller.restaurantDetailsList
                                            .data![index].restaurantStatus !=
                                        "Open")
                                      Positioned(
                                          bottom: Get.height * 0.01,
                                          right: Get.width * 0.03,
                                          child: Text(
                                            "Open in 5 hours",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: Get.width * 0.03,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        visualDensity: VisualDensity.compact,
                                        title: Text(
                                          controller.restaurantDetailsList
                                              .data![index].restaurantName!,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge!
                                              .copyWith(
                                                color: AppColors.black,
                                                fontSize: Get.width * 0.04,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        subtitle: Text(
                                          controller
                                              .restaurantDetailsList
                                              .data![index]
                                              .restaurantShortDescription!,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                fontSize: Get.width * 0.03,
                                              ),
                                        ),
                                        //delivery time
                                        trailing: Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: Get.width * 0.02,
                                            // vertical: Get.height * 0.01,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColors.btnColor3,
                                            borderRadius: BorderRadius.circular(
                                                Get.width * 0.02),
                                          ),
                                          child: Text(
                                              textAlign: TextAlign.center,
                                              controller
                                                          .restaurantDetailsList
                                                          .data![index]
                                                          .restaurantStatus ==
                                                      "Open"
                                                  ? controller
                                                      .restaurantDetailsList
                                                      .data![index]
                                                      .restaurantDeliveryTime!
                                                  : "Closed",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .copyWith(
                                                    color: AppColors.logoColor,
                                                  )),
                                        ),
                                      ),
                                      // Text(
                                      //   controller.allRestaurantList[index]
                                      //       ["title"],
                                      //   style: Theme.of(context)
                                      //       .textTheme
                                      //       .titleLarge!
                                      //       .copyWith(
                                      //         color: AppColors.black,
                                      //         fontSize: Get.width * 0.04,
                                      //         fontWeight: FontWeight.bold,
                                      //       ),
                                      // ),
                                      // SizedBox(
                                      //   height: Get.height * 0.01,
                                      // ),
                                      // Text(
                                      //   controller.allRestaurantList[index]
                                      //       ["description"],
                                      //   overflow: TextOverflow.ellipsis,
                                      //   style: Theme.of(context)
                                      //       .textTheme
                                      //       .bodyMedium!
                                      //       .copyWith(
                                      //         fontSize: Get.width * 0.03,
                                      //       ),
                                      // ),
                                      // SizedBox(
                                      //   height: Get.height * 0.01,
                                      // ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.delivery_dining,
                                            color: AppColors.logoColor,
                                          ),
                                          Text(
                                            controller.allRestaurantList[index]
                                                ["cost"],
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                          const Spacer(),
                                          const Icon(
                                            Icons.timer,
                                            color: AppColors.logoColor,
                                          ),
                                          Text(
                                            controller.allRestaurantList[index]
                                                ["time"],
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                          const Spacer(),
                                          const Icon(
                                            Icons.star,
                                            color: AppColors.logoColor,
                                          ),
                                          Text(
                                            controller.restaurantDetailsList
                                                .data![index].restaurantRating!,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  ]),
            );
          },
        ));
  }
}
