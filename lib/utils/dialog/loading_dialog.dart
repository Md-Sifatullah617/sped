import 'package:flutter/material.dart';
import 'package:get/get.dart';

loadingDialog({String? loadingText, bool barrierDismissible = false}) {
  var context = Get.context as BuildContext;
  showDialog(
      barrierDismissible: barrierDismissible,
      context: context,
      builder: (_) {
        return Dialog(
          backgroundColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.black),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  loadingText ?? 'Processing...',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
        );
      });
}
