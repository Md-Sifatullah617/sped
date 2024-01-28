import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/custom_text_field.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';
import 'package:sped/utils/routes/app_routes.dart';
import 'package:sped/view/profile/controller/profile_controller.dart';

class ProfileDetailsPage extends StatelessWidget {
  const ProfileDetailsPage({super.key});
  // StreamController<ErrorAnimationType> errorController =
  //     StreamController<ErrorAnimationType>();
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
          builder: (controller) => SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: Get.height * 0.03,
              ),
              InkWell(
                onTap: () {
                  controller.isTypingNum.value
                      ?
                      // ? controller.verificationPage.value
                      //     ? controller.verificationPage.value = false
                      //     :
                      controller.isTypingNum.value = false
                      : Get.back();
                  controller.update();
                },
                child: const Icon(Icons.arrow_back),
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Text(
                // controller.verificationPage.value
                //     ? controller.isWelcomePage.value
                //         ? "Welcome!"
                //         : "Verify Mobile Number"
                //     :
                "Profile details",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              if (controller.isTypingNum.value)
                SizedBox(
                  width: Get.width,
                  height: Get.height * 0.85,
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Text(
                          // controller.verificationPage.value
                          //   ? controller.isWelcomePage.value
                          //       ? "Please choose the country where you’ll primarily use sped"
                          //       : "Please check the text message from your mobile phone we send you a OTP code via message."
                          //   :
                          "We’ll use your number only if we need to contact you about your order."),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      // controller.verificationPage.value
                      //     ? Expanded(
                      //         // width: Get.width,
                      //         // height: Get.height * 0.715,
                      //         child: Column(
                      //           children: [
                      //             //pin code field here for verification
                      //             SizedBox(
                      //               height: Get.height * 0.01,
                      //             ),
                      //             controller.isWelcomePage.value
                      //                 ? SizedBox(
                      //                     width: Get.width,
                      //                     height: Get.height * 0.715,
                      //                     child: Column(
                      //                       children: [
                      //                         InkWell(
                      //                           onTap: () {
                      //                             showCountryPicker(
                      //                               context: context,
                      //                               useSafeArea: true,
                      //                               onSelect: (Country country) {
                      //                                 controller.countryController
                      //                                         .text =
                      //                                     "${country.flagEmoji} ${country.displayName}";
                      //                                 controller.storeFlagCode
                      //                                         .text =
                      //                                     "${country.flagEmoji} ${country.phoneCode}";
                      //                                 controller.update();
                      //                                 print(
                      //                                     'Select country: ${country.displayName}');
                      //                               },
                      //                             );
                      //                           },
                      //                           child: AbsorbPointer(
                      //                             child: CustomTextField(
                      //                               txtController: controller
                      //                                   .countryController,
                      //                               hintText: "Country",
                      //                               suffixWidget: Icon(
                      //                                 Icons.arrow_forward_ios,
                      //                                 size: Get.width * 0.04,
                      //                               ),
                      //                             ),
                      //                           ),
                      //                         ),
                      //                         SizedBox(
                      //                           height: Get.height * 0.02,
                      //                         ),
                      //                         CheckboxListTile(
                      //                           value: true,
                      //                           onChanged: (value) {},
                      //                           controlAffinity:
                      //                               ListTileControlAffinity
                      //                                   .leading,
                      //                           contentPadding: EdgeInsets.zero,
                      //                           title: Column(
                      //                             crossAxisAlignment:
                      //                                 CrossAxisAlignment.start,
                      //                             children: [
                      //                               Text(
                      //                                 "I’ve read and agree with the User Terms of Service. I understand that my personal data will be processed in accordance with Sped Privacy Statement.",
                      //                                 style: Theme.of(context)
                      //                                     .textTheme
                      //                                     .bodyMedium,
                      //                               ),
                      //                               InkWell(
                      //                                 onTap: () {},
                      //                                 child: Text(
                      //                                   "Read More",
                      //                                   style: Theme.of(context)
                      //                                       .textTheme
                      //                                       .bodyMedium!
                      //                                       .copyWith(
                      //                                         color: AppColors
                      //                                             .logoColor,
                      //                                       ),
                      //                                 ),
                      //                               ),
                      //                             ],
                      //                           ),
                      //                         ),
                      //                         const Spacer(),
                      //                         PrimaryBtn(
                      //                           title: "Continue",
                      //                           onPressed: () {
                      //                             Get.toNamed(AppRoutes.homePage);
                      //                             // controller.isWelcomePage.value =
                      //                             //     false;
                      //                             // controller.update();
                      //                           },
                      //                         ),
                      //                       ],
                      //                     ))
                      //                 : Expanded(
                      //                     child: Column(
                      //                       children: [
                      //                         PinCodeTextField(
                      //                           appContext: context,
                      //                           pastedTextStyle: TextStyle(
                      //                             color: Colors.green.shade600,
                      //                             fontWeight: FontWeight.bold,
                      //                           ),
                      //                           length: 5,
                      //                           obscureText: false,
                      //                           obscuringCharacter: '*',
                      //                           animationType: AnimationType.fade,
                      //                           validator: (v) {},

                      //                           pinTheme: PinTheme(
                      //                             shape: PinCodeFieldShape.box,
                      //                             borderRadius:
                      //                                 BorderRadius.circular(
                      //                                     Get.width * 0.02),
                      //                             fieldHeight: 60,
                      //                             fieldWidth: 50,
                      //                             activeFillColor:
                      //                                 AppColors.greyColor2,
                      //                           ),
                      //                           cursorColor: Colors.black,
                      //                           animationDuration: const Duration(
                      //                               milliseconds: 300),
                      //                           textStyle: const TextStyle(
                      //                               fontSize: 20, height: 1.6),
                      //                           // backgroundColor: Colors.blue.shade50,
                      //                           // enableActiveFill: true,
                      //                           // errorAnimationController: errorController,
                      //                           // controller:
                      //                           //     controller.pinCodeController,
                      //                           keyboardType:
                      //                               TextInputType.number,
                      //                           boxShadows: [
                      //                             const BoxShadow(
                      //                               offset: Offset(0, 1),
                      //                               color: Colors.black12,
                      //                               blurRadius: 10,
                      //                             )
                      //                           ],
                      //                           onCompleted: (v) {
                      //                             print("Completed");
                      //                           },
                      //                           // onTap: () {
                      //                           //   print("Pressed");
                      //                           // },
                      //                           onChanged: (value) {
                      //                             print(value);
                      //                             // setState(() {
                      //                             //   currentText = value;
                      //                             // });
                      //                           },
                      //                           beforeTextPaste: (text) {
                      //                             print(
                      //                                 "Allowing to paste $text");
                      //                             //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //                             //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      //                             return true;
                      //                           },
                      //                         ),
                      //                         Row(
                      //                           children: [
                      //                             const Text("Don’t get code?"),
                      //                             SizedBox(
                      //                               width: Get.width * 0.02,
                      //                             ),
                      //                             InkWell(
                      //                               onTap: () {},
                      //                               child: Text(
                      //                                 "Resend code via message.",
                      //                                 style: Theme.of(context)
                      //                                     .textTheme
                      //                                     .bodyMedium!
                      //                                     .copyWith(
                      //                                       color: AppColors
                      //                                           .logoColor,
                      //                                     ),
                      //                               ),
                      //                             ),
                      //                           ],
                      //                         ),
                      //                         const Spacer(),
                      //                         PrimaryBtn(
                      //                           title: "Next",
                      //                           onPressed: () {
                      //                             controller.isWelcomePage.value =
                      //                                 true;
                      //                             controller.update();
                      //                           },
                      //                         ),
                      //                       ],
                      //                     ),
                      //                   ),
                      //           ],
                      //         ),
                      //       )
                      //     :
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: InkWell(
                                    onTap: () {
                                      // showCountryPicker(
                                      //   context: context,
                                      //   useSafeArea: true,
                                      //   onSelect: (Country country) {
                                      //     controller.countryController.text =
                                      //         "${country.flagEmoji} ${country.displayName}";
                                      //     controller.update();
                                      //     print('Select country: ${country.displayName}');
                                      //   },
                                      // );
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
                                    child: CustomTextField(
                                        hintText: "Phone number")),
                              ],
                            ),
                            const Spacer(),
                            PrimaryBtn(
                              title: "Send text with code",
                              onPressed: () {
                                // controller.verificationPage.value = true;
                                // controller.update();
                                controller.isTypingNum.value = false;
                                Get.toNamed(AppRoutes.homePage);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              if (!controller.isTypingNum.value)
                SizedBox(
                  width: Get.width,
                  height: Get.height * 0.85,
                  child: Expanded(
                    child: Column(
                      children: [
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
                          hintText: "Email",
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        const CustomTextField(
                          hintText: "First name",
                        ),
                        SizedBox(
                          height: Get.height * 0.01,
                        ),
                        const CustomTextField(
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
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
                        PrimaryBtn(
                            title: "Next",
                            onPressed: () {
                              controller.isTypingNum.value = true;
                              controller.update();
                              // Get.toNamed(AppRoutes.homePage);
                            }),
                      ],
                    ),
                  ),
                ),
            ]),
          ),
        ),
      ),
    );
  }
}
