import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/custom_tag.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/utils/routes/app_routes.dart';

class InnerProductPage extends StatelessWidget {
  const InnerProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: Get.height * 0.4,
              width: Get.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(food1), fit: BoxFit.cover)),
            ),
            //back button
            Positioned(
              top: Get.height * 0.05,
              left: Get.width * 0.05,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  height: Get.height * 0.05,
                  width: Get.width * 0.1,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.arrow_back),
                ),
              ),
            ),
            //free delivery tag
            Positioned(
              bottom: Get.height * 0.05,
              left: Get.width * 0.05,
              child: SizedBox(
                width: Get.width * 0.8,
                child: const Wrap(
                  children: [
                    CustomTags(
                      tagName: "Free Delivery",
                    ),
                    CustomTags(
                      tagName: "MIN. ORDER: 120 KR",
                    ),
                    CustomTags(
                      tagName: "MIN.ORDER: 140,00 KR",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        ListTile(
          title: Text("Malle Sushi Stockholm",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: Get.width * 0.07,
                  )),
          subtitle: Text(
            "Lorem ispum is simply dummy text of the print and typesetting industry",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: Get.width * 0.04,
                  fontWeight: FontWeight.normal,
                ),
          ),
          trailing: Container(
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
        ListTile(
          visualDensity: VisualDensity.compact,
          leading: Image.asset(
            faceIcon,
            height: Get.width * 0.07,
            width: Get.width * 0.07,
          ),
          title: Text("Excellent 9.2"),
        ),
        ListTile(
          visualDensity: VisualDensity.compact,
          leading: Image.asset(
            clockIcon,
            height: Get.width * 0.07,
            width: Get.width * 0.07,
          ),
          title: Text("Open . Closes at 20:30"),
          trailing: PrimaryBtn(
            onPressed: () {},
            title: "More Info",
            titleColor: AppColors.logoColor,
            width: Get.width * 0.269,
            height: Get.height * 0.04,
            btnColor: AppColors.btnColor2,
          ),
        ),
        ListTile(
          visualDensity: VisualDensity.compact,
          leading: Image.asset(
            riderIcon,
            height: Get.width * 0.07,
            width: Get.width * 0.07,
          ),
          title: Text("Delivery in 20 - 30 min"),
          subtitle: Text("Norrtullsgatan"),
          trailing: PrimaryBtn(
            onPressed: () {},
            title: "Change",
            titleColor: AppColors.logoColor,
            width: Get.width * 0.228,
            height: Get.height * 0.04,
            btnColor: AppColors.btnColor2,
          ),
        ),
        ListTile(
          visualDensity: VisualDensity.compact,
          leading: Image.asset(
            togetherIcon,
            height: Get.width * 0.07,
            width: Get.width * 0.07,
          ),
          title: Text("Order together"),
          trailing: PrimaryBtn(
            onPressed: () {},
            title: "Start Now",
            titleColor: AppColors.logoColor,
            width: Get.width * 0.275,
            height: Get.height * 0.04,
            btnColor: AppColors.btnColor2,
          ),
        ),
        Divider(
          indent: Get.width * 0.05,
          endIndent: Get.width * 0.05,
        ),
        ListTile(
            visualDensity: VisualDensity.compact,
            leading: Image.asset(
              iIcon,
              height: Get.width * 0.07,
              width: Get.width * 0.07,
            ),
            title: Text("See allergen information"),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: Get.width * 0.05,
              color: AppColors.logoColor,
            )),
        SizedBox(
          height: Get.height * 0.01,
        ),
        PrimaryBtn(
          title: "Free delivery",
          titleColor: AppColors.logoColor,
          isLeftAligned: false,
          onPressed: () {
            Get.toNamed(AppRoutes.login);
          },
          width: Get.width * 0.9,
          btnColor: AppColors.btnColor2,
        )
      ],
    ));
  }
}
