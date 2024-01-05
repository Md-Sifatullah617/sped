import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/utils/routes/app_routes.dart';

class SelectCitiesOnMapPage extends StatelessWidget {
  const SelectCitiesOnMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width * 0.02,
      ),
      child: Column(
        children: [
          SizedBox(
            height: Get.height * 0.035,
          ),
          ListTile(
            title: Text(
              "Explore Sped",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            subtitle: Text(
              "More then 500 cities in 25 countries",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Container(
              height: Get.height * 0.85,
              width: Get.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: Stack(
                children: [
                  SizedBox(
                    height: Get.height * 0.83,
                    child: Image.asset(
                      staticMap,
                      fit: BoxFit.cover,
                    ),
                  ),
                  //explore button on map
                  Positioned(
                    bottom: Get.height * 0.02,
                    left: Get.width * 0.02,
                    right: Get.width * 0.02,
                    child: PrimaryBtn(
                      title: "Explore Sped cities",
                      onPressed: () {
                        Get.toNamed(AppRoutes.homePage);
                      },
                    ),
                  ),
                ],
              )),
        ],
      ),
    ));
  }
}
