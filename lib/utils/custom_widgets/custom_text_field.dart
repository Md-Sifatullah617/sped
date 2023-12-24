import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:sped/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final bool? isCountryPicker;
  final TextEditingController? txtController;
  final String hintText;
  final IconData? prefixIcon;
  final String title;
  final Widget? suffixWidget;
  final bool? obscureText;
  final String? Function(String?)? validator;
  const CustomTextField({
    super.key,
    this.txtController,
    required this.hintText,
    this.prefixIcon,
    required this.title,
    this.isCountryPicker,
    this.suffixWidget,
    this.obscureText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title == '' ? const SizedBox() : Text(title, style: titleStyle),
        // SizedBox(
        //   height: Get.height * 0.01,
        // ),
        TextFormField(
          controller: txtController,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            prefixIcon: isCountryPicker ?? false
                ? CountryCodePicker(
                    onChanged: (CountryCode countryCode) {
                      print("New Country selected: $countryCode");
                    },
                    initialSelection: 'BD',
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                  )
                : prefixIcon == null
                    ? null
                    : Icon(
                        prefixIcon,
                      ),
            suffixIcon: suffixWidget,
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyLarge,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: AppColors.fedBlue,
            filled: true,
          ),
          validator: validator,
        ),
      ],
    );
  }
}
