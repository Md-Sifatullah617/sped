import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/view/profile/controller/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (controller) => Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.05,
              vertical: Get.height * 0.02,
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: Get.width * 0.3,
                  width: Get.width * 0.3,
                  margin: EdgeInsets.all(Get.width * 0.03),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(avatar),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  "Md. Sifatullah",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text("sifatullahsanowar1@gmail.com"),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                ...List.generate(
                  controller.profileOptions.length,
                  (index) => ListTile(
                    leading: Image.asset(
                      controller.profileOptions[index]["icon"],
                      color: AppColors.logoColor,
                    ),
                    title: Text(controller.profileOptions[index]["title"]),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: PrimaryBtn(
                      title: "LogOut",
                      iconImage: logoutIcon,
                      titleColor: AppColors.logoColor,
                      btnColor: AppColors.white,
                      borderColor: AppColors.logoColor,
                      width: Get.width * 0.3,
                      onPressed: () {}),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
