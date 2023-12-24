import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';

class PrimaryBtn extends StatelessWidget {
  final String title;
  final Color? btnColor;
  final Function() onPressed;
  final double? hpadd;
  const PrimaryBtn({
    super.key,
    required this.title,
    required this.onPressed,
    this.btnColor,
    this.hpadd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: hpadd ?? 0,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor ?? AppColors.logoColor,
          minimumSize: Size(Get.width, Get.height * 0.06),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: AppColors.white,
              ),
        ),
      ),
    );
  }
}
