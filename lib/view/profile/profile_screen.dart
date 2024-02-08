import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/services/configs/appConfig.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/utils/routes/app_routes.dart';
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
                SizedBox(
                  height: Get.height * 0.02,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(AppRoutes.editProfile);
                  },
                  child: Container(
                    height: Get.width * 0.2,
                    width: Get.width,
                    margin: EdgeInsets.symmetric(
                      vertical: Get.height * 0.02,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.05,
                      vertical: Get.height * 0.02,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.btnColor3,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(Get.width * 0.05),
                      // image: DecorationImage(
                      //   image: AssetImage(avatar),
                      //   fit: BoxFit.fill,
                      // ),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(Get.width * 0.3),
                            child: Image.asset(
                              avatar,
                              height: Get.width * 0.2,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(
                            width: Get.width * 0.05,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      controller.userDetails[0].data!
                                          .customerFullName!,
                                      // data["data"]['customerFullName'],
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded)
                                  ],
                                ),
                                Text("25 orders"),
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.isCreditToken.value = true;
                    Get.toNamed(AppRoutes.editOneByOne);
                  },
                  child: Container(
                    width: Get.width,
                    padding: EdgeInsets.symmetric(
                      horizontal: Get.width * 0.05,
                      vertical: Get.height * 0.02,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(Get.width * 0.05),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Tokens"),
                            Spacer(),
                            Text("0x"),
                            SizedBox(
                              width: Get.width * 0.02,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: Get.width * 0.04,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.02,
                        ),
                        Row(
                          children: [
                            Text("Credits"),
                            Spacer(),
                            Text("000 €"),
                            SizedBox(
                              width: Get.width * 0.02,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: Get.width * 0.04,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: Get.width,
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.05,
                    vertical: Get.height * 0.02,
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: Get.height * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(Get.width * 0.05),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Quick links",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Row(
                          children: [
                            Text("Invite friends"),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: Get.width * 0.04,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Row(
                          children: [
                            Text("Enter promo code"),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: Get.width * 0.04,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Row(
                          children: [
                            Text("Customer support"),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: Get.width * 0.04,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Row(
                          children: [
                            Text("Order history"),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: Get.width * 0.04,
                            ),
                          ],
                        )
                      ]),
                ),
                Container(
                  width: Get.width,
                  padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.05,
                    vertical: Get.height * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(Get.width * 0.05),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Settings",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Row(
                          children: [
                            Text("Account"),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: Get.width * 0.04,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Row(
                          children: [
                            Text("Credits and Tokens"),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: Get.width * 0.04,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Row(
                          children: [
                            Text("Payment methods"),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: Get.width * 0.04,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Row(
                          children: [
                            Text("My addresses"),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: Get.width * 0.04,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        Row(
                          children: [
                            Text("Loyalty cards"),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: Get.width * 0.04,
                            ),
                          ],
                        ),
                      ]),
                ),
                //       SizedBox(
                //         height: Get.height * 0.02,
                //       ),
                //       ...List.generate(
                //         controller.profileOptions.length,
                //         (index) => ListTile(
                //           leading: Image.asset(
                //             controller.profileOptions[index]["icon"],
                //             color: AppColors.logoColor,
                //           ),
                //           title: Text(controller.profileOptions[index]["title"]),
                //         ),
                //       ),
                //       SizedBox(
                //         height: Get.height * 0.01,
                //       ),
                //       Align(
                //         alignment: Alignment.bottomLeft,
                //         child: PrimaryBtn(
                //             title: "LogOut",
                //             iconImage: logoutIcon,
                //             titleColor: AppColors.logoColor,
                //             btnColor: AppColors.white,
                //             borderColor: AppColors.logoColor,
                //             width: Get.width * 0.3,
                //             onPressed: () {}),
                //       ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
