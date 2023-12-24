import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';

class PrimaryBtn extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final Color? btnColor;
  final Function() onPressed;
  final double? hpadd;
  final IconData? icon;
  final Color? iconColor;
  const PrimaryBtn({
    super.key,
    required this.title,
    required this.onPressed,
    this.btnColor,
    this.hpadd,
    this.icon,
    this.titleColor,
    this.iconColor,
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
          padding: EdgeInsets.symmetric(
            horizontal: Get.height * 0.02,
          ),
          minimumSize: Size(Get.width, Get.height * 0.06),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          children: [
            if (icon != null)
              Icon(
                icon,
                color: iconColor ?? AppColors.white,
              ),
            Spacer(),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: titleColor ?? AppColors.white,
                  ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
