import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/custom_text_field.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';

class ProfileDetailsPage extends StatelessWidget {
  const ProfileDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.05,
          vertical: Get.width * 0.06,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: Get.height * 0.05,
              width: Get.width * 0.1,
              decoration: const BoxDecoration(
                color: AppColors.greyColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.arrow_back),
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Text(
            "Profile details",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          InkWell(
            onTap: () {
              showCountryPicker(
                context: context,
                useSafeArea: true,
                onSelect: (Country country) {
                  print('Select country: ${country.displayName}');
                },
              );
            },
            child: AbsorbPointer(
              child: CustomTextField(
                hintText: "Country",
                suffixWidget: Icon(
                  Icons.arrow_forward_ios,
                  size: Get.width * 0.04,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          CustomTextField(
            hintText: "Email",
            suffixWidget: Icon(
              Icons.arrow_forward_ios,
              size: Get.width * 0.04,
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          CustomTextField(
              hintText: "First name",
              suffixWidget: Icon(
                Icons.arrow_forward_ios,
                size: Get.width * 0.04,
              )),
          SizedBox(
            height: Get.height * 0.02,
          ),
          CustomTextField(
            hintText: "Last name",
            suffixWidget: Icon(
              Icons.arrow_forward_ios,
              size: Get.width * 0.04,
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          const Spacer(),
          PrimaryBtn(title: "Next", onPressed: () {}),
        ]),
      ),
    );
  }
}
