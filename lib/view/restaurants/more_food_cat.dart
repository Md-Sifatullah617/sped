import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/custom_widgets/custom_checkbox.dart';
import 'package:sped/utils/custom_widgets/primary_button.dart';

class MoreFoodCategoryPage extends StatelessWidget {
  const MoreFoodCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Get.arguments['restaurantName'],
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.greyColor),
          ),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.greyColor),
            ),
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.05,
            vertical: Get.height * 0.02,
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Get.width * 0.05),
                    child: Image.asset(
                      Get.arguments['moreCategories']['image'],
                      height: Get.height * 0.3,
                      width: Get.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  //favorite icon
                  Positioned(
                    bottom: Get.height * 0.02,
                    right: Get.width * 0.05,
                    child: Container(
                      height: Get.height * 0.05,
                      width: Get.width * 0.1,
                      decoration: BoxDecoration(
                        color: AppColors.greyColor,
                        borderRadius: BorderRadius.circular(Get.width * 0.05),
                      ),
                      child: const Icon(
                        Icons.favorite_outline,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: Get.width,
                padding: EdgeInsets.symmetric(
                  vertical: Get.width * 0.02,
                  horizontal: Get.width * 0.05,
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
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        Get.arguments['moreCategories']['name'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        Get.arguments['moreCategories']['ingredents'],
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.share,
                      ),
                    ),
                    Text(
                      Get.arguments['moreCategories']['price'],
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: AppColors.logoColor,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                width: Get.width,
                padding: EdgeInsets.symmetric(
                  vertical: Get.width * 0.02,
                  horizontal: Get.width * 0.05,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(Get.width * 0.05),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Valitse koko',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomCheckBoxListTile(
                      title: 'Normaali',
                      isActive: true,
                    ),
                    CustomCheckBoxListTile(
                      leading: Expanded(
                        child: Row(children: [
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                          Text(
                            'Perphepizza',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(left: Get.width * 0.02),
                            padding: EdgeInsets.symmetric(
                              vertical: Get.height * 0.005,
                              horizontal: Get.width * 0.02,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.btnColor2,
                              borderRadius:
                                  BorderRadius.circular(Get.width * 0.02),
                            ),
                            child: Text(
                              '+ € 5.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.logoColor,
                                  ),
                            ),
                          ),
                        ]),
                      ),
                      isActive: false,
                    ),
                  ],
                ),
              ),
              Container(
                width: Get.width,
                margin: EdgeInsets.symmetric(
                  vertical: Get.height * 0.02,
                ),
                padding: EdgeInsets.symmetric(
                  vertical: Get.width * 0.02,
                  horizontal: Get.width * 0.05,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(Get.width * 0.05),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lisataytteet',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      'Choose up to 38 items',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomCheckBoxListTile(
                      leading: Expanded(
                        child: Row(children: [
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                          Text(
                            'Normaali',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(left: Get.width * 0.02),
                            padding: EdgeInsets.symmetric(
                              vertical: Get.height * 0.005,
                              horizontal: Get.width * 0.02,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.btnColor2,
                              borderRadius:
                                  BorderRadius.circular(Get.width * 0.02),
                            ),
                            child: Text(
                              '+ € 5.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.logoColor,
                                  ),
                            ),
                          ),
                        ]),
                      ),
                      isActive: true,
                    ),
                    CustomCheckBoxListTile(
                      leading: Expanded(
                        child: Row(children: [
                          SizedBox(
                            width: Get.width * 0.02,
                          ),
                          Text(
                            'Perphepizza',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(left: Get.width * 0.02),
                            padding: EdgeInsets.symmetric(
                              vertical: Get.height * 0.005,
                              horizontal: Get.width * 0.02,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.btnColor2,
                              borderRadius:
                                  BorderRadius.circular(Get.width * 0.02),
                            ),
                            child: Text(
                              '+ € 5.00',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: AppColors.logoColor,
                                  ),
                            ),
                          ),
                        ]),
                      ),
                      isActive: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(children: [
          //increment decrement and quantity
          Expanded(
            child: Container(
              height: Get.height * 0.06,
              decoration: BoxDecoration(
                color: AppColors.btnColor2,
                borderRadius: BorderRadius.circular(Get.width * 0.02),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Get.height * 0.005,
                      horizontal: Get.width * 0.02,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.greyColor2,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.remove,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '1',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.logoColor,
                        ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Get.height * 0.005,
                      horizontal: Get.width * 0.02,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.greyColor2,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //add to cart button
          Expanded(
            flex: 2,
            child: Container(
              height: Get.height * 0.06,
              margin: EdgeInsets.symmetric(
                horizontal: Get.width * 0.02,
              ),
              padding: EdgeInsets.symmetric(
                vertical: Get.height * 0.005,
                horizontal: Get.width * 0.05,
              ),
              decoration: BoxDecoration(
                color: AppColors.logoColor,
                borderRadius: BorderRadius.circular(Get.width * 0.02),
              ),
              child: Row(
                children: [
                  Text(
                    'Add to cart',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.white,
                        ),
                  ),
                  Spacer(),
                  Text(
                    '€ 5.00',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.white,
                        ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
