import 'package:get/get.dart';
import 'package:sped/utils/photos.dart';

class RestaurantController extends GetxController {
  List categoriesList = [
    {
      "image": rFood1,
      "title": "Brunch",
      "subtitle": "20+ Places",
    },
    {
      "image": rFood2,
      "title": "Sea Food",
      "subtitle": "30+ Places",
    },
    {
      "image": rFood3,
      "title": "Dessert",
      "subtitle": "40+ Places",
    },
  ];

  List allRestaurantList = [
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
