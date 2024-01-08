import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/photos.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.greyColor)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Account'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.05,
          ),
          child: Column(
            children: [
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
                      Row(
                        children: [
                          Text("Country"),
                          Spacer(),
                          Text("India"),
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
                        height: Get.height * 0.01,
                      ),
                      Divider(
                        color: AppColors.greyColor,
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Profile picture"),
                          Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              avatar,
                              height: Get.height * 0.04,
                              width: Get.height * 0.04,
                              fit: BoxFit.cover,
                            ),
                          ),
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
                        height: Get.height * 0.01,
                      ),
                      Divider(
                        color: AppColors.greyColor,
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Email"),
                          Spacer(),
                          Text("demo.mail@gmail.com"),
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
                        height: Get.height * 0.01,
                      ),
                      Divider(
                        color: AppColors.greyColor,
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Phone"),
                          Spacer(),
                          Text("+91 9876543210"),
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
                        height: Get.height * 0.01,
                      ),
                      Divider(
                        color: AppColors.greyColor,
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Name"),
                          Spacer(),
                          Text("Demo Name"),
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
                        height: Get.height * 0.01,
                      ),
                      Divider(
                        color: AppColors.greyColor,
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Delete account"),
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
                      Divider(
                        color: AppColors.greyColor,
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Send receipts to email"),
                          Spacer(),
                          SizedBox(
                              height: Get.height * 0.03,
                              child: Switch(
                                  value: true,
                                  activeTrackColor: AppColors.logoColor,
                                  onChanged: (value) {})),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Divider(
                        color: AppColors.greyColor,
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Clear auto-translation settings"),
                          Spacer(),
                          Text("Reset"),
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: Get.width * 0.04,
                          ),
                        ],
                      ),
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
                        "Data protection",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Privacy statement"),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: Get.width * 0.04,
                          ),
                        ],
                      ),
                    ]),
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
                        "Notifications",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Privacy statement"),
                          Spacer(),
                          SizedBox(
                              height: Get.height * 0.03,
                              child: Switch(
                                  value: true,
                                  activeTrackColor: AppColors.logoColor,
                                  onChanged: (value) {})),
                        ],
                      ),
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
                        "Device settings",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Limit tracking"),
                          Spacer(),
                          SizedBox(
                              height: Get.height * 0.03,
                              child: Switch(
                                  value: false,
                                  activeTrackColor: AppColors.logoColor,
                                  onChanged: (value) {})),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Divider(
                        color: AppColors.greyColor,
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Appearence"),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: Get.width * 0.04,
                          ),
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                    ]),
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
                        "About",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Sped version"),
                          Spacer(),
                          Text("4.48.2(124480200)"),
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Divider(
                        color: AppColors.greyColor,
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Android version"),
                          Spacer(),
                          Text("11"),
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Divider(
                        color: AppColors.greyColor,
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("License"),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: Get.width * 0.04,
                          ),
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
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
                        "Share",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("Share"),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: Get.width * 0.04,
                          ),
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                    ]),
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
                        "Logout",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text("logout"),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: Get.width * 0.04,
                          ),
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
