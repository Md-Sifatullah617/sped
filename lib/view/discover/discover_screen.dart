import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/utils/routes/app_routes.dart';
import 'package:sped/view/discover/controller/discrover_controller.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

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
          title: InkWell(
            onTap: () {
              Get.bottomSheet(
                Container(
                  height: Get.height * 0.35,
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.05,
                    vertical: Get.height * 0.02,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: Get.height * 0.04,
                            width: Get.height * 0.04,
                            decoration: const BoxDecoration(
                              color: AppColors.greyColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.close),
                          ),
                        ),
                      ),
                      Text(
                        "Location",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.location_on,
                        ),
                        title: Text(
                          "Share my current location",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        subtitle: Text(
                          "Sped will use your location",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        visualDensity: VisualDensity.compact,
                      ),
                      ListTile(
                        onTap: () {
                          Get.toNamed(AppRoutes.addAddress);
                        },
                        leading: const Icon(
                          Icons.add,
                        ),
                        title: Text(
                          "Add new address manually",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        visualDensity: VisualDensity.compact,
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.list,
                        ),
                        title: Text(
                          "Browse all Sped cities",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        visualDensity: VisualDensity.compact,
                      )
                    ],
                  ),
                ),
                backgroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Get.width * 0.05),
                ),
              );
            },
            child: Row(
              children: [
                // RichText(
                //   text: TextSpan(
                //     children: [
                //       TextSpan(
                //         text: "Home",
                //         style: Theme.of(context).textTheme.titleLarge!.copyWith(
                //               fontWeight: FontWeight.bold,
                //             ),
                //       ),
                //       TextSpan(
                //         text: ", Jl. Soekarno Hatta 15A",
                //         style: Theme.of(context).textTheme.titleSmall,
                //       ),
                //     ],
                //   ),
                // ),
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
          ),
        ),
        body: GetBuilder<DiscoverController>(
          init: DiscoverController(),
          builder: (controller) => SingleChildScrollView(
            child: Column(
              children: [
                //carousel slider and dot indicator
                Container(
                  width: Get.width,
                  height: Get.height * 0.33,
                  child: Stack(
                    children: [
                      //carousel slider
                      Positioned(
                        top: Get.height * 0.01,
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
                                borderRadius:
                                    BorderRadius.circular(Get.width * 0.05),
                                image: DecorationImage(
                                  image: AssetImage(item["image"]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  item["title"] == ""
                                      ? const SizedBox()
                                      : Text(
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
                                  // PrimaryBtn(
                                  //     title: "Order Now",
                                  //     btnColor: AppColors.black,
                                  //     width: Get.width * 0.4,
                                  //     radius: Get.width * 0.05,
                                  //     onPressed: () {}),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      // Custom dot indicator
                      Positioned(
                        top: Get.height * 0.3,
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
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.05,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Fastest Delivery",
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
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                              controller.fastestDeliveryList.length,
                              (index) => Container(
                                  height: Get.height * 0.28,
                                  width: Get.width * 0.65,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: Get.width * 0.02,
                                    vertical: Get.height * 0.02,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius:
                                        BorderRadius.circular(Get.width * 0.05),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.greyColor
                                            .withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft:
                                              Radius.circular(Get.width * 0.05),
                                          topRight:
                                              Radius.circular(Get.width * 0.05),
                                        ),
                                        child: Image.asset(
                                          controller.fastestDeliveryList[index]
                                              ["image"],
                                          height: Get.height * 0.15,
                                          width: Get.width,
                                          fit: BoxFit.cover,
                                        ),
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
                                              controller.fastestDeliveryList[
                                                  index]["title"],
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
                                              controller.fastestDeliveryList[
                                                  index]["description"],
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
                                                  controller
                                                          .fastestDeliveryList[
                                                      index]["cost"],
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
                                                  controller
                                                          .fastestDeliveryList[
                                                      index]["time"],
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
                                                  controller
                                                          .fastestDeliveryList[
                                                      index]["rating"],
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
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.2,
                  width: Get.width,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: Get.height * 0.21,
                        width: Get.width,
                      ),
                      Positioned(
                        left: Get.width * 0.02,
                        bottom: Get.height * 0.008,
                        right: Get.width * 0.02,
                        child: Container(
                          height: Get.height * 0.15,
                          width: Get.width,
                          margin: EdgeInsets.symmetric(
                            horizontal: Get.width * 0.05,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.logoColor,
                            borderRadius:
                                BorderRadius.circular(Get.width * 0.05),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: Get.width * 0.05),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  logo,
                                  color: AppColors.white,
                                  height: Get.height * 0.04,
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                Text(
                                  "Skip the delivery fees with sped",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: AppColors.white,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: Get.width * 0.07,
                        bottom: Get.height * 0.007,
                        child: Transform.flip(
                          flipX: true,
                          child: Image.asset(
                            deliveryBikeMan,
                            height: Get.height * 0.2,
                            width: Get.width * 0.4,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.05,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Restaurant categories",
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: Get.width * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          PrimaryBtn(
                              title: "See All",
                              titleColor: AppColors.logoColor,
                              height: Get.height * 0.04,
                              width: Get.width * 0.22,
                              btnColor: AppColors.btnColor2,
                              onPressed: () {}),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                              controller.popularList.length,
                              (index) => Container(
                                height: Get.height * 0.18,
                                width: Get.width * 0.3,
                                margin: EdgeInsets.symmetric(
                                  horizontal: Get.width * 0.02,
                                  vertical: Get.height * 0.01,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius:
                                      BorderRadius.circular(Get.width * 0.05),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          AppColors.greyColor.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft:
                                            Radius.circular(Get.width * 0.05),
                                        topRight:
                                            Radius.circular(Get.width * 0.05),
                                      ),
                                      child: Image.asset(
                                        controller.popularList[index]["image"],
                                        height: Get.height * 0.1,
                                        width: Get.width,
                                        fit: BoxFit.cover,
                                      ),
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
                                            controller.popularList[index]
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
                                            controller.popularList[index]
                                                ["type"],
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  fontSize: Get.width * 0.03,
                                                ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
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
          ),
        ));
  }
}
