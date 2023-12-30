import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTags extends StatelessWidget {
  final String tagName;
  const CustomTags({
    super.key,
    required this.tagName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: Get.width * 0.01, vertical: Get.height * 0.005),
      padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.03, vertical: Get.height * 0.005),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        tagName,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
