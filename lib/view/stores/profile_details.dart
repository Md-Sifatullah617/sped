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
          SizedBox(
            height: Get.height * 0.03,
          ),
          InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back),
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
            height: Get.height * 0.01,
          ),
          CustomTextField(
            hintText: "Email",
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          CustomTextField(
            hintText: "First name",
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          CustomTextField(
            hintText: "Last name",
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          CheckboxListTile(
            value: true,
            onChanged: (value) {},
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "I’ve read and agree with the User Terms of Service. I understand that my personal data will be processed in accordance with Sped Privacy Statement.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Read More",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.logoColor,
                        ),
                  ),
                ),
              ],
            ),
          ),
          CheckboxListTile(
            value: false,
            onChanged: (value) {},
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
            title: Text(
              "I want to received special offers and promotions from Sped via push notification.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          CheckboxListTile(
            value: false,
            onChanged: (value) {},
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
            title: Text(
              "I want to received special offers and promotions from Sped via email.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const Spacer(),
          PrimaryBtn(title: "Next", onPressed: () {}),
        ]),
      ),
    );
  }
}
