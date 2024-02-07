import 'package:get/get.dart';
import 'package:sped/view/stores/controller/authController.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
