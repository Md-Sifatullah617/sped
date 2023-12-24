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
  final double? height;
  final double? width;
  final double? radius;
  const PrimaryBtn({
    super.key,
    required this.title,
    required this.onPressed,
    this.btnColor,
    this.hpadd,
    this.icon,
    this.titleColor,
    this.iconColor,
    this.height,
    this.width,
    this.radius,
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
          maximumSize: Size(width ?? Get.width, height ?? Get.height * 0.06),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              radius ?? Get.width * 0.02,
            ),
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
