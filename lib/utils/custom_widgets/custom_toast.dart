import 'package:fluttertoast/fluttertoast.dart';
import 'package:sped/utils/colors.dart';

void customToast({bool? isError, required String msg}) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor:
          isError ?? false ? AppColors.redColor : AppColors.logoColor,
      textColor: AppColors.white,
      fontSize: 16.0);
}
