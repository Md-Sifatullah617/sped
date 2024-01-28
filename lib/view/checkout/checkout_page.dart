import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/photos.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Get.arguments['restaurantName'],
          style: const TextStyle(
            color: AppColors.black,
          ),
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
              Icons.info_outline,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: Get.height * 0.25,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(staticMap),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //delivery and pickup switch button
                Positioned(
                  bottom: 0,
                  left: Get.width * 0.05,
                  right: Get.width * 0.05,
                  child: Stack(
                    children: [
                      Container(
                        height: Get.height * 0.06,
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(Get.width * 0.05),
                        ),
                      ),
                      Positioned(
                        left: Get.width * 0.02,
                        top: Get.height * 0.01,
                        child: Container(
                          height: Get.height * 0.5,
                          width: Get.width * 0.5,
                          margin: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02,
                            vertical: Get.height * 0.01,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(Get.width * 0.05),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Delivery",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: AppColors.black,
                                ),
                          ),
                          Text(
                            "Pickup",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  color: AppColors.black,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            ListTile(
              leading: Image.asset(locationindicator2),
              title: Text(
                "Seinajoki",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Home",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: AppColors.greyColor,
                    ),
              ),
            ),
            ListTile(
              leading: Image.asset(appartment),
              title: Text(
                "Entrance / Staircase: kumbh kert, Floor: 2nd",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Apartment: hg, Doorbell / Intercom",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: AppColors.greyColor,
                    ),
              ),
            ),
            ListTile(
              leading: Image.asset(
                clockIcon,
                height: Get.height * 0.06,
                width: Get.width * 0.06,
              ),
              title: Text(
                "Delivery in 25 - 35 min",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "2.2 km delivery distance",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: AppColors.greyColor,
                    ),
              ),
            ),
            ListTile(
              leading: Image.asset(office),
              title: Text(
                "No - contact delivery",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Please leave the order in front of my door",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: AppColors.greyColor,
                    ),
              ),
              trailing: Transform.scale(
                  scale: 0.8,
                  child: Switch(
                      value: true,
                      activeTrackColor: AppColors.logoColor,
                      onChanged: (value) {})),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              height: Get.height * 0.06,
              width: Get.width * 0.9,
              decoration: BoxDecoration(
                color: AppColors.greyColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(Get.width * 0.02),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.message,
                    color: Colors.grey[600],
                  ),
                  Text(
                    "Instructions for the courier",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Text(
              "Payment",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            ListTile(
              leading: Container(
                height: Get.width * 0.07,
                width: Get.width * 0.07,
                decoration: BoxDecoration(
                  color: AppColors.logoColor,
                  borderRadius: BorderRadius.circular(Get.width * 0.02),
                ),
              ),
              title: Text(
                "Sped promo code",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Enter code to claim your benefits",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: AppColors.greyColor,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
