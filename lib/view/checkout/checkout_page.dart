import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/view/checkout/controller/checkout_controller.dart';

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
      body: GetBuilder<CheckoutController>(
        init: CheckoutController(),
        builder: (controller) => SingleChildScrollView(
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
                            borderRadius:
                                BorderRadius.circular(Get.width * 0.05),
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
                                borderRadius:
                                    BorderRadius.circular(Get.width * 0.05),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: Get.height * 0.014,
                          left: Get.width * 0.2,
                          right: Get.width * 0.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
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
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: AppColors.greyColor,
                                ),
                      ),
                    ),
                    Text(
                      "Courier tip",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Text(
                      "The courier will get 100% of your tip after delivery. To cancel your tip, please contact support for help.",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.greyColor,
                          ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    // ...List.generate(5, (index) => Chip(label: Text("\$${index + 1}"))),
                    SizedBox(
                      height: Get.height * 0.07,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Chip(
                                label: Text("\$${index + 1}"),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(Get.width * 0.05),
                                ),
                                backgroundColor: AppColors.greyColor,
                                side: BorderSide.none,
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        "Prices in €",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      subtitle: Text(
                        "incl. taxes (if applicable)",
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: AppColors.greyColor,
                                ),
                      ),
                    ),
                    Text(
                      "How do fees work?",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: AppColors.logoColor,
                          ),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Item subtotal",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Spacer(),
                        Text(
                          "\$ 0.00",
                          style: Theme.of(context).textTheme.titleMedium,
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
                          "Delivery (2.2 km)",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Spacer(),
                        Text(
                          "\$ 0.00",
                          style: Theme.of(context).textTheme.titleMedium,
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
                          "Service fee",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Spacer(),
                        Text(
                          "\$ 0.00",
                          style: Theme.of(context).textTheme.titleMedium,
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
                          "Total",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Spacer(),
                        Text(
                          "\$ 0.00",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    PrimaryBtn(
                      onPressed: () {
                        Get.bottomSheet(
                          Container(
                            height: Get.height * 0.55,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Spacer(),
                                          IconButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.grey[300]),
                                            ),
                                            icon: Icon(
                                              Icons.close,
                                              color: AppColors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "Payment methods",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.02,
                                      ),
                                      Text(
                                        "Credit and debit cards",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.add),
                                        title: Text(
                                          "Add a new card",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.02,
                                      ),
                                      Text(
                                        "Other payment methods",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                      ListTile(
                                        leading: Image.asset(
                                          payment1,
                                          height: Get.height * 0.03,
                                          width: Get.width * 0.1,
                                          fit: BoxFit.cover,
                                        ),
                                        title: Text(
                                          "Edenred",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ),
                                      ListTile(
                                        leading: Image.asset(
                                          payment2,
                                          height: Get.height * 0.03,
                                          width: Get.width * 0.1,
                                          fit: BoxFit.cover,
                                        ),
                                        title: Text(
                                          "Google Pay",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ),
                                      ListTile(
                                        leading: Image.asset(
                                          payment3,
                                          height: Get.height * 0.03,
                                          width: Get.width * 0.1,
                                          fit: BoxFit.cover,
                                        ),
                                        title: Text(
                                          "Klarna",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      title: "Add a payment method to order",
                      titleColor: AppColors.black,
                      btnColor: AppColors.btnColor2,
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
