import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';
import 'package:sped/utils/photos.dart';

class DeliveryMapPage extends StatelessWidget {
  const DeliveryMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            staticMap,
            fit: BoxFit.cover,
            height: Get.height,
            width: Get.width,
          ),
          Positioned(
              bottom: 0,
              child: Container(
                width: Get.width,
                height: Get.height * 0.4,
                padding: EdgeInsets.symmetric(
                    horizontal: Get.width * 0.02, vertical: Get.height * 0.02),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          //circle bounndary
                          width: Get.width * 0.3,
                          height: Get.width * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.greyColor,
                              width: Get.width * 0.03,
                            ),
                          ),
                          child: Container(
                              //circle inside
                              width: Get.width * 0.2,
                              height: Get.width * 0.2,
                              margin: EdgeInsets.all(Get.width * 0.01),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.greyColor,
                                  width: Get.width * 0.007,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "35",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Text(
                                    "minutes until delivery",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          color: AppColors.greyColor,
                                        ),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          width: Get.width * 0.3,
                          height: Get.width * 0.3,
                          child: CircularProgressIndicator(
                            value: 0.3,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.logoColor),
                            strokeWidth: Get.width * 0.03,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey[200]),
                              shape: MaterialStateProperty.all(
                                CircleBorder(),
                              ),
                            ),
                            icon: Icon(Icons.mark_unread_chat_alt_sharp)),
                        IconButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey[200]),
                              shape: MaterialStateProperty.all(
                                CircleBorder(),
                              ),
                            ),
                            icon: Icon(Icons.receipt_long_rounded)),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Text(
                      "Mardo’s Restaurant",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: AppColors.greyColor,
                          ),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Text(
                      "Almost there! Your order is being prepared now.",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Text(
                        "When your order is ready, it will be sent to your way",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: AppColors.greyColor,
                            )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0,
        size.height * 0.3); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height * 0.3);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
