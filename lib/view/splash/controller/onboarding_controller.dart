import 'package:get/get.dart';
import 'package:sped/utils/custom_widgets/custom_sheet.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/view/splash/onboardin.dart';
import 'package:sped/view/stores/login_screen.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;
  var onBoardImageList = [splashPhoto, onBoard2, onBoard3];
  var onBoardContent = [OnBoardContent1(), OnboardTwo(), Onboard2()];
}
