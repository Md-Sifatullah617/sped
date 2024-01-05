import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/photos.dart';

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
        ),
        body: Column(
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
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
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
            Container(
                height: Get.height * 0.35,
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
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    Text(
                      "The location type helps us to find you better.",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    ListTile(
                      leading: Icon(Icons.home_outlined),
                      title: Text(
                        "Home",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
                    ListTile(
                      leading: Image.asset(appartment),
                      title: Text(
                        "appartment",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
                    ListTile(
                      leading: Image.asset(office),
                      title: Text(
                        "Office",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
                    ListTile(
                      leading: Image.asset(other),
                      title: Text(
                        "Other",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
                  ],
                ))
          ],
        ));
  }
}
