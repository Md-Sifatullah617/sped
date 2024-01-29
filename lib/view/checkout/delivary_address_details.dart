import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/photos.dart';

class DeliveryAddressDetailsPage extends StatelessWidget {
  const DeliveryAddressDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.greyColor2),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColors.greyColor2),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              padding: EdgeInsets.all(Get.width * 0.05),
              margin: EdgeInsets.symmetric(
                horizontal: Get.width * 0.05,
                vertical: Get.height * 0.02,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius:
                    BorderRadius.all(Radius.circular(Get.width * 0.05)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mardo’s Restaurant",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Text(
                    "I’m loving it. Tarkat allergiatiedot ja lihojen alkuperamaat loydat osoitteesta: www.mardos.com/fa /menu.html",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Text(
                    "Address",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.05,
                        ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text("Helsinginkatu 4"),
                    subtitle: const Text("00500 Helsinki"),
                    trailing: SizedBox(
                      width: Get.width * 0.2,
                      child: const Row(
                        children: [
                          Icon(
                            Icons.directions_outlined,
                            color: AppColors.logoColor,
                          ),
                          Text(
                            "Direction",
                            style: TextStyle(color: AppColors.logoColor),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: Get.width,
              padding: EdgeInsets.all(Get.width * 0.05),
              margin: EdgeInsets.symmetric(
                horizontal: Get.width * 0.05,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius:
                    BorderRadius.all(Radius.circular(Get.width * 0.05)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery",
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Get.width * 0.05,
                                ),
                      ),
                      Text(
                        "Restaurant",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Monday",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02,
                            vertical: Get.height * 0.005),
                        decoration: BoxDecoration(
                          color: AppColors.btnColor3,
                          borderRadius: BorderRadius.all(
                            Radius.circular(Get.width * 0.02),
                          ),
                        ),
                        child: Text(
                          "00:00-05:50, 10:00-00:00",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: AppColors.logoColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tuesday",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02,
                            vertical: Get.height * 0.005),
                        decoration: BoxDecoration(
                          color: AppColors.btnColor3,
                          borderRadius: BorderRadius.all(
                            Radius.circular(Get.width * 0.02),
                          ),
                        ),
                        child: Text(
                          "00:00-05:50, 10:00-00:00",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: AppColors.logoColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Wednesday",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02,
                            vertical: Get.height * 0.005),
                        decoration: BoxDecoration(
                          color: AppColors.btnColor3,
                          borderRadius: BorderRadius.all(
                            Radius.circular(Get.width * 0.02),
                          ),
                        ),
                        child: Text(
                          "00:00-05:50, 10:00-00:00",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: AppColors.logoColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Thursday",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02,
                            vertical: Get.height * 0.005),
                        decoration: BoxDecoration(
                          color: AppColors.btnColor3,
                          borderRadius: BorderRadius.all(
                            Radius.circular(Get.width * 0.02),
                          ),
                        ),
                        child: Text(
                          "00:00-05:50, 10:00-00:00",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: AppColors.logoColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Friday",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02,
                            vertical: Get.height * 0.005),
                        decoration: BoxDecoration(
                          color: AppColors.btnColor3,
                          borderRadius: BorderRadius.all(
                            Radius.circular(Get.width * 0.02),
                          ),
                        ),
                        child: Text(
                          "00:00-05:50, 10:00-00:00",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: AppColors.logoColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Saturday",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02,
                            vertical: Get.height * 0.005),
                        decoration: BoxDecoration(
                          color: AppColors.btnColor3,
                          borderRadius: BorderRadius.all(
                            Radius.circular(Get.width * 0.02),
                          ),
                        ),
                        child: Text(
                          "00:00-05:50, 10:00-00:00",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: AppColors.logoColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sunday",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.02,
                            vertical: Get.height * 0.005),
                        decoration: BoxDecoration(
                          color: AppColors.btnColor3,
                          borderRadius: BorderRadius.all(
                            Radius.circular(Get.width * 0.02),
                          ),
                        ),
                        child: Text(
                          "00:00-05:50, 10:00-00:00",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: AppColors.logoColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: Get.width,
              padding: EdgeInsets.all(Get.width * 0.05),
              margin: EdgeInsets.symmetric(
                horizontal: Get.width * 0.05,
                vertical: Get.height * 0.02,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius:
                    BorderRadius.all(Radius.circular(Get.width * 0.05)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery Information",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.05,
                        ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Get.width * 0.05),
                    child: Image.asset(
                      staticMap,
                      width: Get.width,
                      height: Get.height * 0.2,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Restaurant delivery area",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.zero),
                          ),
                          child: Text(
                            "View map",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: AppColors.logoColor,
                                  decoration: TextDecoration.underline,
                                ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery cost",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        "7,78€",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Long delivery surcharge limit",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        "500m",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Small surcharge limit",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        "10,00€",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Estimated delivery time",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        "30-40 min",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: Get.width,
              padding: EdgeInsets.all(Get.width * 0.05),
              margin: EdgeInsets.only(
                left: Get.width * 0.05,
                right: Get.width * 0.05,
                bottom: Get.height * 0.02,
              ),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius:
                    BorderRadius.all(Radius.circular(Get.width * 0.05)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contact Information",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: Get.width * 0.05,
                        ),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Text(
                    "If you have allergies or dietary restrictions, please contact the restaurant for dish-specific information",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Restaurant",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        "+358408383840",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColors.logoColor,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sped support",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                      Text(
                        "Chat",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColors.logoColor,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
