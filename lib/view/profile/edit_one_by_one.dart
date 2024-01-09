import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/custom_text_field.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/view/profile/controller/profile_controller.dart';

class EditOneByOneScreen extends StatelessWidget {
  const EditOneByOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColors.greyColor),
            ),
            onPressed: () {
              //on press make false and back
              controller.isEditEmail.value = false;
              controller.isTypingNum.value = false;
              controller.isEditName.value = false;
              controller.isDeleteAccount.value = false;
              controller.isApearence.value = false;
              controller.isCreditToken.value = false;
              Get.back();
            },
          ),
          title: Text(controller.isApearence.value
              ? 'Appearance'
              : controller.isCreditToken.value
                  ? 'Credits and tokens'
                  : 'Edit'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.05,
            vertical: Get.width * 0.05,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              controller.isEditEmail.value
                  ? 'Email'
                  : controller.isTypingNum.value
                      ? 'Mobile number'
                      : controller.isEditName.value
                          ? 'Name'
                          : controller.isDeleteAccount.value
                              ? 'Delete Account'
                              : "",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: Get.height * 0.02),
            if (controller.isEditEmail.value)
              CustomTextField(hintText: 'Email'),
            if (controller.isTypingNum.value)
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: InkWell(
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
                          txtController: controller.storeFlagCode,
                          hintText: "Country",
                          suffixWidget: Icon(
                            Icons.arrow_forward_ios,
                            size: Get.width * 0.04,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.02,
                  ),
                  const Expanded(
                      flex: 3,
                      child: CustomTextField(hintText: "Phone number")),
                ],
              ),
            if (controller.isEditName.value)
              Column(
                children: [
                  CustomTextField(hintText: 'First Name'),
                  CustomTextField(hintText: 'Last Name'),
                ],
              ),
            if (controller.isDeleteAccount.value)
              Column(
                children: [
                  Text(
                      "Mahmudul, we’re really sorry to see you go. Are you sure you want to delete your account? Once you confirm, your data will be gone forever."),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  CustomTextField(
                    hintText: 'Choose reason',
                    suffixWidget: Icon(
                      Icons.keyboard_arrow_down_rounded,
                    ),
                  ),
                ],
              ),
            // if (controller.isApearence.value)
            if (controller.isCreditToken.value)
              Column(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(groupDiscussion)),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Text(
                    "Want to pay less?",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Text(
                    "You can invite friend to Sped. When a friend makes their first order, you ‘ll get a discount",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  PrimaryBtn(
                      title: "Invite friends",
                      onPressed: () {
                        controller.isCreditToken.value = false;
                        Get.back();
                      }),
                ],
              ),
            Spacer(),
            if (controller.isCreditToken.value == false &&
                controller.isApearence.value == false)
              Column(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        controller.isEditEmail.value
                            ? usingMobile
                            : controller.isTypingNum.value
                                ? manWritingPaper
                                : controller.isEditName.value
                                    ? manWritingPaper
                                    : controller.isDeleteAccount.value
                                        ? searchingFile
                                        : "",
                      )),
                  PrimaryBtn(
                      title: "Save",
                      onPressed: () {
                        //on press make false and back
                        controller.isEditEmail.value = false;
                        controller.isTypingNum.value = false;
                        controller.isEditName.value = false;
                        controller.isDeleteAccount.value = false;
                        controller.isApearence.value = false;
                        controller.isCreditToken.value = false;
                        Get.back();
                      }),
                ],
              ),
          ]),
        ),
      ),
    );
  }
}
