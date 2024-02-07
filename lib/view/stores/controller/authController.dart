import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/services/apiService/api_service.dart';
import 'package:sped/services/apiService/error_handling.dart';
import 'package:sped/utils/custom_widgets/custom_toast.dart';
import 'package:sped/utils/dialog/loading_dialog.dart';

class AuthController extends GetxController {
  final isLoading = false.obs;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  var endTime = RxInt(0);

  // void verifyOTP(context) async {
  //   try {
  //     loadingDialog();
  //     final res = await ApiService.post(
  //       isDomainUrl: true,
  //       url: '/api/customer/verify/api',
  //       data: {
  //         'phoneNumber': phone.value.text,
  //         'verifyPin': codeController.value.text
  //       },
  //     );

  //     if (res!.data != null) {
  //       if (res.data['status'] == 'success') {
  //         snackbar(res.data['message']);

  //         //    await getStorage.write(accessToken, res.data['data']['id']);

  //         Get.offAll(LoginPage());
  //       } else {
  //         snackbar(res.data['message']);
  //         Navigator.pop(context);
  //       }
  //     }
  //   } catch (e) {
  //     Navigator.pop(context);

  //     print(e);
  //   }
  // }

  // void resendOtp(context) async {
  //   try {
  //     loadingDialog();
  //     // final res = await ApiService.get(
  //     //   url: '/customer/resend/verify',
  //     // );
  //     final res = await dio.get(
  //         'https://demo.quicksoft.xyz/api/v1/customer/resend/verify',
  //         options: Options(headers: {'customer_id': getStorage.read(userId)}));

  //     if (res!.data != null) {
  //       if (res.data['status'] == 'success') {
  //         clear();

  //         print('Your OTP: ' + res.data['verifycode'].toString());
  //         endTime.value = DateTime.now().millisecondsSinceEpoch + 1000 * 60;
  //         snackbar('OTP send success!!');
  //         Navigator.pop(context);
  //       } else {
  //         Navigator.pop(context);
  //       }
  //     }
  //   } on DioError catch (e) {
  //     print(e);
  //     ErrorHandlerService.onError(e);
  //     Navigator.pop(context);
  //   }
  // }

  // void authentication() async {
  //   if (await getStorage.read(accessToken) == null ||
  //       await getStorage.read(accessToken) == '') {
  //     print('Token : ${await getStorage.read(accessToken)}');

  //     Get.offAll(LoginPage());
  //   } else {
  //     print('Token : ${await getStorage.read(accessToken)}');
  //     reloadAllData();
  //     Get.offAll(Home());
  //   }
  // }

  void login(context) async {
    try {
      loadingDialog();
      final res = await ApiService.post(
        url: '//login',
        data: {
          "first_name": firstNameController.text, //required
          "last_name": lastNameController.text,
          "email": emailController.text, //required
          "phone":
              phoneController.text, //required and must be with country code
          "email_verified": 1 //value: 1 or 0
        },
      );

      if (res!.data != null) {
        if (res.data['status'] == 'success') {
          customToast(
            msg: res.data['message'],
          );
          Navigator.pop(context);
          // Get.offAll(Home());
        } else if (res.data['userId'] != null) {
          customToast(
            msg: res.data['message'],
          );
          // Get.to(OtpVerificationPage());
        } else if (res.data['status'] == true) {
          customToast(
            msg: res.data['message'],
          );
        } else {
          customToast(
            msg: res.data['message'],
          );
        }
      }
    } catch (e) {
      print(e);
      Navigator.pop(context);
    }
  }

  // void register(context) async {
  //   try {
  //     loadingDialog();
  //     final data = {
  //       'fullName': fullName.value.text,
  //       'password': password.value.text,
  //       'phoneNumber': phone.value.text,
  //       'address': address.value.text,
  //       'district': shippingAddressC.selectedDistrictsId.toString(),
  //       'area': shippingAddressC.selectedDistrictsId.toString()
  //     };
  //     print(data);
  //     final res = await ApiService.post(
  //       isDomainUrl: true,
  //       url: '/api/customer/register/api',
  //       data: data,
  //     );

  //     if (res!.data != null) {
  //       if (res.data['userId'] != null) {
  //         //   await getBox.write(district.toString(),shippingAddressC.selectedDistrictsId);
  //         snackbar(res.data['message']);

  //         Navigator.pop(context);
  //         clear();

  //         Get.to(OtpVerificationPage());
  //       } else {
  //         validationForm(res.data['validation']);
  //         Navigator.pop(context);
  //       }
  //     }
  //   } catch (e) {
  //     print(e);
  //     Navigator.pop(context);
  //   }
  // }

  // void forgetPassword(context) async {
  //   try {
  //     loadingDialog();
  //     // final res = await ApiService.post(
  //     //   isDomainUrl: true,
  //     //   url: '/customer/forget-password',
  //     //   data: {
  //     //     'phoneNumber': phone.value.text,
  //     //   },
  //     // );

  //     final res = await dio.post(
  //         'https://demo.quicksoft.xyz/api/v1/customer/forget-password',
  //         data: {'phoneNumber': phone.value.text});

  //     if (res!.data != null) {
  //       if (res.data['status'] == 'success') {
  //         print(res.data['forgettoken']);
  //         await getStorage.write(userId, res.data['userId'].toString());

  //         snackbar('Verification code sent to your number.');
  //         codeController.value.clear();
  //         password.value.clear();
  //         Navigator.pop(context);

  //         Get.to(ResetPasswordPage());
  //       } else {
  //         snackbar('User not found.', bgColor: red);
  //         Navigator.pop(context);
  //       }
  //     }
  //   } catch (e) {
  //     Navigator.pop(context);
  //     print(e);
  //   }
  // }

  // void resetPassword(context) async {
  //   try {
  //     loadingDialog();
  //     // final res = await ApiService.post(
  //     //
  //     //   url: '/customer/forget-password/reset',
  //     //   data: {
  //     //     'verifycode': codeController.value.text,
  //     //     'newpassword': password.value.text,
  //     //   },
  //     // );

  //     final res = await dio.post(
  //         'https://demo.quicksoft.xyz/api/v1/customer/forget-password/reset',
  //         data: {
  //           'verifycode': codeController.value.text,
  //           'newpassword': password.value.text
  //         },
  //         options: Options(headers: {'customer_id': getStorage.read(userId)}));

  //     if (res.data != null) {
  //       if (res.data['status'] == 'success') {
  //         print(res.data['forgotten token']);
  //         snackbar('Verification success.');

  //         // Navigator.pop(context);

  //         clear();

  //         if (await getStorage.read(accessToken) == null ||
  //             await getStorage.read(accessToken) == '') {
  //           Get.offAll(LoginPage());
  //         } else {
  //           Get.offAll(Home());
  //         }

  //         // Get.to(ResetPasswordPage());
  //       } else {
  //         snackbar('incorrect OTP code.', bgColor: red);
  //         Navigator.pop(context);
  //       }
  //     }
  //   } catch (e) {
  //     Navigator.pop(context);
  //     print(e);
  //   }
  // }

  // void validationForm(res) async {
  //   if (res.toString().contains('phoneNumber')) {
  //     snackbar('The phone number has already been taken.', bgColor: red);
  //   } else {}
  // }

  // void logout() async {
  //   try {
  //     await ApiService.post(
  //       url: '/customer/logout',
  //     );
  //   } catch (e) {
  //     print(e);
  //     removeAllLocalData();
  //   }
  //   removeAllLocalData();
  //   Get.offAll(LoginPage(isBackHide: true));
  // }

  // void removeAllLocalData() async {
  //   getBox.remove(accessToken);
  //   getBox.remove(userId);
  //   getBox.remove(userName);
  //   getBox.remove(emailSave);
  //   getBox.remove(profilePicture);
  //   getBox.remove(address.toString());
  //   // Get.offAll(LoginPage(isBackHide: true));
  // }
}
