import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/custom_widgets/custom_text_field.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/routes/app_routes.dart';
import 'package:sped/view/profile/controller/profile_controller.dart';

class AddNewAddressPage extends StatelessWidget {
  const AddNewAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.05,
          vertical: Get.width * 0.06,
        ),
        child: GetBuilder<ProfileController>(
          init: ProfileController(),
          builder: (controller) =>
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              "Add new address",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  const Text(
                      "Please choose the country where you’ll primarily use sped"),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  InkWell(
                    onTap: () {
                      showCountryPicker(
                        context: context,
                        useSafeArea: true,
                        onSelect: (Country country) {
                          controller.countryController.text =
                              "${country.flagEmoji} ${country.displayName}";
                          controller.storeFlagCode.text =
                              "${country.flagEmoji} ${country.phoneCode}";
                          controller.update();
                          print('Select country: ${country.displayName}');
                        },
                      );
                    },
                    child: AbsorbPointer(
                      child: CustomTextField(
                        txtController: controller.countryController,
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
                  const CustomTextField(
                    hintText: "Street name and number",
                  ),
                  const Spacer(),
                  PrimaryBtn(
                    title: "Next",
                    onPressed: () {
                      Get.toNamed(AppRoutes.addTheme);
                    },
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
