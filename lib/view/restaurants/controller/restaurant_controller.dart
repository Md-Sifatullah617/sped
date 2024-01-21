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

  List foodList = [
    'Potata',
    'Pizza',
    'Burger',
    'Pasta',
    'Salad',
    'Soup',
    'Dessert',
    'Drinks',
    'Biriyanis',
    'Breads',
    'Rice',
  ];
  var selectedFoodIndex = 0.obs;

  List pizzatList = [
    {
      "name": "Margherita",
      "image": food1,
      "price": "€ 5.00",
      "ingredents": "Tomato sauce, mozzarella, basil",
    },
    {
      "name": "Marinara",
      "image": food2,
      "price": "€ 6.00",
      "ingredents": "Tomato sauce, garlic",
    },
    {
      "name": "Quattro Stagioni",
      "image": food3,
      "price": "€ 7.00",
      "ingredents":
          "Tomato sauce, mozzarella, mushrooms, ham, artichokes, olives, basil",
    },
    {
      "name": "Carbonara",
      "image": food4,
      "price": "€ 8.00",
      "ingredents":
          "Tomato sauce, mozzarella, mushrooms, ham, artichokes, olives, basil",
    },
    {
      "name": "Frutti di Mare",
      "image": food5,
      "price": "€ 9.00",
      "ingredents": "Tomato sauce, mozzarella, seafood",
    },
  ];
}
