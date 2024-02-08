import 'package:get/get.dart';
import 'package:sped/view/profile/controller/profile_controller.dart';
import 'package:sped/view/restaurants/controller/restaurant_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<RestaurantController>(() => RestaurantController());
  }
}
