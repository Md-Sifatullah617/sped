import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
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
            return Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Restaurants",
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
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
              Expanded(
                child: ListView.builder(
                  itemCount: controller.categoriesList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.05,
                          vertical: Get.height * 0.01,
                        ),
                        height: Get.height * 0.15,
                        width: Get.width * 0.25,
                        decoration: BoxDecoration(
                          color: AppColors.btnColor2,
                          borderRadius: BorderRadius.circular(Get.width * 0.02),
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
              )
            ]);
          },
        ));
  }
}
