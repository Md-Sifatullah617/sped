import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/custom_text_field.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';

class AddNewCartPage extends StatelessWidget {
  const AddNewCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(AppColors.greyColor2),
          ),
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Add New Cart'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.05,
            vertical: Get.height * 0.02,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Get.width,
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.05,
                  vertical: Get.height * 0.02,
                ),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(Get.width * 0.05),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Debit/Credit Card",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: Get.width * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: Get.height * 0.02),
                      CustomTextField(
                        title: "Card number",
                        titleColor: Colors.white,
                        hintText: "0000 0000 0000 0000",
                        height: Get.height * 0.05,
                      ),
                      SizedBox(height: Get.height * 0.02),
                      Row(
                        children: [
                          Expanded(
                              child: CustomTextField(
                            title: "Expiration date",
                            titleColor: Colors.white,
                            hintText: "MM/YY",
                            height: Get.height * 0.05,
                          )),
                          SizedBox(width: Get.width * 0.05),
                          Expanded(
                              child: CustomTextField(
                            title: "Security code",
                            titleColor: Colors.white,
                            hintText: "0000",
                            height: Get.height * 0.05,
                          )),
                        ],
                      )
                    ]),
              ),
              PrimaryBtn(
                onPressed: () {},
                title: "Add Cart",
              )
            ],
          ),
        ),
      ),
    );
  }
}
