import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/utils/routes/app_routes.dart';
import 'package:sped/view/restaurants/controller/restaurant_controller.dart';
import '../../utils/colors.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          elevation: 0,
          leading: IconButton(
            icon: Image.asset(
              locationIndicator,
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.btnColor2),
            ),
            onPressed: () {},
          ),
          title: Row(
            children: [
              Expanded(
                child: RichText(
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Home",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      TextSpan(
                        text: ", Jl. Soekarno Hatta 15A",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
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
                            "Stores",
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
                        itemCount: controller.categoriesList.length,
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
                                  image: AssetImage(
                                    controller.categoriesList[index]["image"],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              controller.categoriesList[index]["title"],
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              controller.categoriesList[index]["subtitle"],
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
                      controller.allRestaurantList.length,
                      (index) => InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.innerProductPage);
                        },
                        child: Container(
                            height: Get.height * 0.37,
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
                                      child: Image.asset(
                                        controller.allRestaurantList[index]
                                            ["image"],
                                        height: Get.height * 0.25,
                                        width: Get.width,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    //isfav icon top right corner
                                    Positioned(
                                      top: Get.height * 0.01,
                                      right: Get.width * 0.06,
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
                                    //grocery tag top left corner
                                    Positioned(
                                      top: Get.height * 0.01,
                                      left: Get.width * 0.06,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: Get.width * 0.02,
                                          vertical: Get.height * 0.005,
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius: BorderRadius.circular(
                                              Get.width * 0.03),
                                        ),
                                        child: Text(
                                          "Grocery",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                        ),
                                      ),
                                    ),
                                    //3cents off delivery tag bottom left corner
                                    Positioned(
                                      bottom: Get.height * 0.01,
                                      right: 0,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: Get.width * 0.02,
                                          vertical: Get.height * 0.005,
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppColors.logoColor,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                Get.width * 0.03),
                                            bottomLeft: Radius.circular(
                                                Get.width * 0.03),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              "3 cents off delivery",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall!
                                                  .copyWith(
                                                    color: AppColors.white,
                                                  ),
                                            ),
                                            SizedBox(
                                              width: Get.width * 0.02,
                                            ),
                                            Image.asset(
                                              discountIcon,
                                              height: Get.height * 0.02,
                                              width: Get.width * 0.04,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: Get.width * 0.03,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.allRestaurantList[index]
                                            ["title"],
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(
                                              color: AppColors.black,
                                              fontSize: Get.width * 0.04,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.01,
                                      ),
                                      Text(
                                        controller.allRestaurantList[index]
                                            ["description"],
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                              fontSize: Get.width * 0.03,
                                            ),
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.01,
                                      ),
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
                                            controller.allRestaurantList[index]
                                                ["rating"],
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
                    )
                  ]),
            );
          },
        ));
  }
}
