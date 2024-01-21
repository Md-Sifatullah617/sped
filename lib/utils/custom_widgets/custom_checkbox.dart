import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';

class CustomCheckBoxListTile extends StatefulWidget {
  final BoxShape? boxShape;
  final String? title;
  final Widget? leading;
  late bool? isActive;
  final Function(bool)? onTap;
  CustomCheckBoxListTile({
    super.key,
    this.boxShape = BoxShape.circle,
    this.title,
    this.onTap,
    this.isActive = false,
    this.leading,
  });

  @override
  State<CustomCheckBoxListTile> createState() => _CustomCheckBoxListTileState();
}

class _CustomCheckBoxListTileState extends State<CustomCheckBoxListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.isActive = !widget.isActive!;
        print("value ${widget.isActive}");
        setState(() {});
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Get.height * 0.004),
        child: Row(
          children: [
            Container(
              width: Get.width * 0.05,
              height: Get.width * 0.05,
              margin: EdgeInsets.symmetric(
                vertical: Get.height * 0.01,
              ),
              decoration: BoxDecoration(
                  color: widget.isActive == true
                      ? AppColors.logoColor
                      : AppColors.white,
                  shape: widget.boxShape ?? BoxShape.circle,
                  borderRadius: widget.boxShape == BoxShape.rectangle
                      ? BorderRadius.circular(5)
                      : null,
                  border: Border.all(
                    color: !widget.isActive!
                        ? AppColors.logoColor
                        : AppColors.greyColor2,
                  )),
              child: Center(
                child: Icon(
                  Icons.check,
                  color: AppColors.white,
                  size: Get.width * 0.04,
                ),
              ),
            ),
            SizedBox(
              width: Get.width * 0.02,
            ),
            widget.leading ?? Container(),
            SizedBox(
              width: Get.width * 0.02,
            ),
            widget.title == null
                ? Container()
                : Text(widget.title!,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: AppColors.black,
                        )),
          ],
        ),
      ),
    );
  }
}
