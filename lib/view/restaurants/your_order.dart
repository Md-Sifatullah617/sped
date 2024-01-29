import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/routes/app_routes.dart';
import 'package:sped/view/restaurants/controller/restaurant_controller.dart';

class YourOrderScreen extends StatelessWidget {
  const YourOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Get.arguments['restaurantName'],
              style: const TextStyle(
                color: AppColors.black,
              ),
            ),
            Text(
              "Your Order",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.greyColor),
          ),
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.greyColor),
            ),
            icon: const Icon(
              Icons.more_horiz,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      body: GetBuilder<RestaurantController>(
        init: RestaurantController(),
        builder: (controller) => Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.05,
            vertical: Get.height * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Order Items',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: Get.width * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Spacer(),
                  PrimaryBtn(
                    onPressed: () {},
                    title: '+ Add More',
                    width: Get.width * 0.31,
                    height: Get.height * 0.04,
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Container(
                width: Get.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: Get.width * 0.07,
                      height: Get.width * 0.07,
                      decoration: BoxDecoration(
                        color: AppColors.btnColor2,
                        borderRadius: BorderRadius.circular(Get.width * 0.02),
                      ),
                      child: const Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: AppColors.logoColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Get.arguments['moreCategories']['name'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            Get.arguments['moreCategories']['ingredents'],
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text("Perphepizza\nNormaali"),
                          SizedBox(
                            height: Get.height * 0.01,
                          ),
                          Text(
                            Get.arguments['moreCategories']['price'],
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: AppColors.logoColor,
                                ),
                          ),
                        ],
                      ),
                    ),
                    //image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(Get.width * 0.02),
                      child: Image.asset(
                        Get.arguments['moreCategories']['image'],
                        width: Get.width * 0.25,
                        height: Get.height * 0.1,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Text(
                "Recommendations",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: Get.width * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      controller.recommandationList.length,
                      (index) => Container(
                        width: Get.width * 0.45,
                        height: Get.height * 0.28,
                        margin: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.02,
                          vertical: Get.height * 0.02,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(Get.width * 0.02),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(Get.width * 0.02),
                                  child: Image.asset(
                                    controller.recommandationList[index]
                                        ['image']!,
                                    width: Get.width * 0.45,
                                    height: Get.height * 0.15,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: Get.height * 0.01,
                                  right: Get.width * 0.02,
                                  child: Container(
                                    width: Get.width * 0.07,
                                    height: Get.width * 0.07,
                                    decoration: BoxDecoration(
                                      color: AppColors.logoColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.add,
                                        color: AppColors.white,
                                      ),
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
                                horizontal: Get.width * 0.02,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.recommandationList[index]
                                        ['price']!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          color: AppColors.logoColor,
                                        ),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.01,
                                  ),
                                  Text(
                                    controller.recommandationList[index]
                                        ['title']!,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: InkWell(
          onTap: () {
            Get.toNamed(AppRoutes.checkout, arguments: {
              'restaurantName': Get.arguments['restaurantName'],
            });
          },
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
                          color: AppColors.white,
                          fontSize: Get.width * 0.05,
                        ),
                  ),
                ),
                const Spacer(),
                Text(
                  "Go to Checkout",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColors.white,
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
