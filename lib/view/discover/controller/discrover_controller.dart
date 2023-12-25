import 'package:get/get.dart';
import 'package:sped/utils/photos.dart';

class DiscoverController extends GetxController {
  List banner = [
    {
      "image": banner1,
      "title": "Get your 30% daily\ndiscount now!",
      "subtitle": "Use code: FIRST50"
    },
    {
      "image": banner1,
      "title": "Get your 30% daily\ndiscount now!",
      "subtitle": "Use code: FIRST50"
    },
    {
      "image": banner1,
      "title": "Get your 30% daily\ndiscount now!",
      "subtitle": "Use code: FIRST50"
    },
  ];
  var currentIndex = 0.obs;
  List fastestDeliveryList = [
    {
      "image": food1,
      "title": "Pathao Food",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "cost": "€3.50",
      "time": "15-20 min",
      "rating": "4.5",
    },
    {
      "image": food2,
      "title": "Uber Eats",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "cost": "€2.50",
      "time": "25-40 min",
      "rating": "3.5",
    },
  ];
}
