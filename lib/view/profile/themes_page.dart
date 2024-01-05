import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/custom_text_field.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/utils/routes/app_routes.dart';
import 'package:sped/view/profile/controller/profile_controller.dart';

class ThemesPage extends StatelessWidget {
  const ThemesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: Get.height * 0.05,
                width: Get.height * 0.05,
                decoration: const BoxDecoration(
                  color: AppColors.greyColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_back),
              ),
            ),
          ),
          title: const Text("Themes"),
          actions: [
            InkWell(
              onTap: () {},
              child: Container(
                height: Get.height * 0.05,
                width: Get.height * 0.05,
                padding: EdgeInsets.all(Get.width * 0.02),
                decoration: const BoxDecoration(
                  color: AppColors.greyColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.add_location_alt_outlined),
              ),
            ),
            SizedBox(
              width: Get.width * 0.02,
            ),
          ],
        ),
        body: GetBuilder<ProfileController>(
          init: ProfileController(),
          builder: (controller) => SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    height: Get.height * 0.12,
                    width: Get.width,
                    margin: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.05,
                      vertical: Get.width * 0.02,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.05,
                      vertical: Get.width * 0.02,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(Get.width * 0.02),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Address",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          "Temmes",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          "91950 Temmes . Finland",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    )),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Obx(
                  () => Container(
                      height: controller.isExpanded.value
                          ? Get.height * 1.16
                          : Get.height * 0.9,
                      width: Get.width,
                      margin: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.05,
                        vertical: Get.width * 0.02,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: Get.width * 0.05,
                        vertical: Get.width * 0.02,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(Get.width * 0.02),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Location type",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            "The location type helps us to find you better.",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          Obx(() => ExpansionTile(
                                key: ValueKey(controller.keyIndex.value),
                                onExpansionChanged: (value) {
                                  controller.isExpanded.value = value;

                                  print(
                                      " isExpanded ${controller.isExpanded.value}");
                                },
                                initiallyExpanded: controller
                                    .isLocationTypeSelected.value.isEmpty,
                                title: controller
                                        .isLocationTypeSelected.value.isNotEmpty
                                    ? Row(
                                        children: [
                                          Image.asset(
                                            controller.isLocationTypeSelected
                                                        .value ==
                                                    "Home"
                                                ? homeIcon
                                                : controller.isLocationTypeSelected
                                                            .value ==
                                                        "Appartment"
                                                    ? appartment
                                                    : controller.isLocationTypeSelected
                                                                .value ==
                                                            "Office"
                                                        ? office
                                                        : other,
                                            color: AppColors.logoColor,
                                          ),
                                          SizedBox(
                                            width: Get.width * 0.02,
                                          ),
                                          Text(
                                            controller
                                                .isLocationTypeSelected.value,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                  color: AppColors.black,
                                                ),
                                          ),
                                        ],
                                      )
                                    : Text("Select Location Type"),
                                children: [
                                  ListTile(
                                    onTap: () {
                                      controller.selectLocationType("Home");
                                      print(controller
                                          .isLocationTypeSelected.value);
                                    },
                                    leading: Icon(Icons.home_outlined),
                                    title: Text(
                                      "Home",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    visualDensity: VisualDensity.compact,
                                  ),
                                  ListTile(
                                    onTap: () {
                                      controller
                                          .selectLocationType("Appartment");
                                      print(controller
                                          .isLocationTypeSelected.value);
                                    },
                                    leading: Image.asset(appartment),
                                    title: Text(
                                      "Appartment",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    visualDensity: VisualDensity.compact,
                                  ),
                                  ListTile(
                                    onTap: () {
                                      controller.selectLocationType("Office");
                                      print(controller
                                          .isLocationTypeSelected.value);
                                    },
                                    leading: Image.asset(office),
                                    title: Text(
                                      "Office",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    visualDensity: VisualDensity.compact,
                                  ),
                                  ListTile(
                                    onTap: () {
                                      controller.selectLocationType("Other");
                                      print(controller
                                          .isLocationTypeSelected.value);
                                    },
                                    leading: Image.asset(other),
                                    title: Text(
                                      "Other",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    visualDensity: VisualDensity.compact,
                                  ),
                                ],
                              )),
                          Text(
                            "Address details",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          CustomTextField(hintText: "Entrance / Staircase"),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          CustomTextField(
                              title: "Optional",
                              hintText: "Name / Number on door"),
                          CustomTextField(
                              hintText: "Other instruction for the courier "),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          Text(
                            "Where’s the entrance?",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          SizedBox(
                            height: Get.height * 0.01,
                          ),
                          PrimaryBtn(
                              title: "Add location on map",
                              icon: Icons.add_location_alt_outlined,
                              iconColor: AppColors.logoColor,
                              btnColor: AppColors.btnColor3,
                              titleColor: AppColors.logoColor,
                              onPressed: () {
                                Get.bottomSheet(
                                  Container(
                                    height: Get.height,
                                    width: Get.width,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: Get.width * 0.05,
                                      vertical: Get.width * 0.05,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.greyColor2,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: Get.height * 0.02,
                                        ),
                                        ListTile(
                                          title: Text(
                                            "Explore Sped cities",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          subtitle: Text(
                                              "Check out our offerings in Finland"),
                                          trailing: InkWell(
                                            onTap: () {
                                              Get.back();
                                            },
                                            child: Container(
                                              height: Get.height * 0.05,
                                              width: Get.height * 0.05,
                                              padding: EdgeInsets.all(
                                                  Get.width * 0.02),
                                              decoration: const BoxDecoration(
                                                color: AppColors.greyColor,
                                                shape: BoxShape.circle,
                                              ),
                                              child: const Icon(Icons.close),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: Get.height * 0.02,
                                        ),
                                        //cities list
                                        Container(
                                          height: Get.height * 0.81,
                                          width: Get.width,
                                          decoration: BoxDecoration(
                                            color: AppColors.white,
                                            borderRadius: BorderRadius.circular(
                                                Get.width * 0.02),
                                          ),
                                          child: ListView.builder(
                                            itemCount: 100,
                                            itemBuilder: (context, index) {
                                              return ListTile(
                                                onTap: () {
                                                  Get.toNamed(AppRoutes
                                                      .selectCitiesOnMap);
                                                },
                                                title: Text(
                                                  "Espoo",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium,
                                                ),
                                                trailing: Icon(
                                                  Icons.arrow_forward_ios,
                                                  size: Get.width * 0.04,
                                                ),
                                                visualDensity:
                                                    VisualDensity.compact,
                                              );
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  isScrollControlled: true,
                                );
                              }),
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          Text(
                            "Address type and label",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            "Add or create address labels to easily choose between delivery addresses.",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          //home office other container button with icon
                          SizedBox(
                            height: Get.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomChipButton(
                                title: "Home",
                                icon: homeIcon,
                              ),
                              CustomChipButton(
                                title: "Office",
                                icon: office,
                              ),
                              CustomChipButton(
                                title: "Other",
                                icon: other,
                              ),
                            ],
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                PrimaryBtn(
                  title: "Add address details",
                  width: Get.width * 0.8,
                  onPressed: () {
                    // Get.toNamed(AppRoutes.selectCities);
                  },
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
              ],
            ),
          ),
        ));
  }
}

class CustomChipButton extends StatelessWidget {
  final String? icon;
  final String? title;
  const CustomChipButton({
    super.key,
    this.icon,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.08,
      width: Get.width * 0.2,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.logoColor,
        ),
        borderRadius: BorderRadius.circular(Get.width * 0.02),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon!,
            color: AppColors.logoColor,
          ),
          Text(
            title!,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.black,
                ),
          ),
        ],
      ),
    );
  }
}
