import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final bool? isCountryPicker;
  final TextEditingController? txtController;
  final String hintText;
  final IconData? prefixIcon;
  final String? title;
  final Color? titleColor;
  final Widget? suffixWidget;
  final bool? obscureText;
  final double? height;
  final bool? disableField;
  final String? Function(String?)? validator;
  const CustomTextField({
    super.key,
    this.txtController,
    required this.hintText,
    this.prefixIcon,
    this.title,
    this.titleColor,
    this.isCountryPicker,
    this.suffixWidget,
    this.obscureText,
    this.validator,
    this.height,
    this.disableField = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Text(title!,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: titleColor ?? AppColors.black,
                  )),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Container(
          height: height ?? Get.height * 0.08,
          width: Get.width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.greyColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            controller: txtController,
            obscureText: obscureText ?? false,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                  vertical: Get.width * 0.02, horizontal: Get.width * 0.05),
              prefixIcon: isCountryPicker ?? false
                  ? CountryCodePicker(
                      onChanged: (CountryCode countryCode) {
                        print("New Country selected: $countryCode");
                      },
                      initialSelection: 'BD',
                      showCountryOnly: true,
                      showOnlyCountryWhenClosed: true,
                      alignLeft: false,
                    )
                  : prefixIcon == null
                      ? null
                      : Icon(
                          prefixIcon,
                        ),
              suffixIcon: suffixWidget,
              labelText: hintText,
              enabled: disableField!
                  ? true
                  : isCountryPicker ?? false
                      ? false
                      : true,
              labelStyle: Theme.of(context).textTheme.bodyLarge,
              border: InputBorder.none,
              // fillColor: AppColors.fedBlue,
              // filled: true,
            ),
            validator: validator,
          ),
        ),
      ],
    );
  }
}
