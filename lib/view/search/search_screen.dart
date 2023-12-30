import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/view/search/controller/search_controller.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar with search bar and filter icon
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
            height: Get.height * 0.06,
            padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.02,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(Get.width * 0.3),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: const Icon(Icons.search),
                hintText: "Search",
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(FontAwesomeIcons.solidCircleXmark),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    const Text("|"),
                    SizedBox(
                      width: Get.width * 0.02,
                    ),
                    Image.asset(
                      filterIcon,
                      height: Get.height * 0.03,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: GetBuilder<SearchesController>(
          init: SearchesController(),
          builder: (controller) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.05,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Searching near ",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              TextSpan(
                                text: "Grand hotel, Sodra Blasieholmshamnen",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      color: AppColors.logoColor,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.02,
                      ),
                      Image.asset(
                        dropDownArrow,
                      )
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.searchList.length,
                        itemBuilder: (context, index) => Container(
                              margin: EdgeInsets.only(
                                bottom: Get.height * 0.02,
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: Get.height * 0.12,
                                    width: Get.height * 0.12,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        Get.width * 0.02,
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          controller.searchList[index]["image"],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.02,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          controller.searchList[index]["title"],
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        Text(
                                          controller.searchList[index]
                                              ["description"],
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                color: Colors.grey,
                                              ),
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.delivery_dining,
                                              color: AppColors.logoColor,
                                            ),
                                            SizedBox(
                                              width: Get.width * 0.01,
                                            ),
                                            Text(
                                              controller.searchList[index]
                                                  ["cost"],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                            ),
                                            const Spacer(),
                                            const Icon(
                                              Icons.timer,
                                              color: AppColors.logoColor,
                                            ),
                                            SizedBox(
                                              width: Get.width * 0.01,
                                            ),
                                            Text(
                                              controller.searchList[index]
                                                  ["time"],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                            ),
                                            const Spacer(),
                                            const Icon(
                                              Icons.star,
                                              color: AppColors.logoColor,
                                            ),
                                            SizedBox(
                                              width: Get.width * 0.01,
                                            ),
                                            Text(
                                              controller.searchList[index]
                                                  ["rating"],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              discountIcon,
                                              color: AppColors.logoColor,
                                            ),
                                            SizedBox(
                                              width: Get.width * 0.01,
                                            ),
                                            const Text("Free Delivery"),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                  )
                ],
              ),
            );
          },
        ));
  }
}
