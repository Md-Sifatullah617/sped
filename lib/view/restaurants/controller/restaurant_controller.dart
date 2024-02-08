import 'package:get/get.dart';
import 'package:sped/services/apiService/api_service.dart';
import 'package:sped/services/configs/appConfig.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/view/restaurants/model/catagory_model.dart';
import 'package:sped/view/restaurants/model/restaurant_model.dart';

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
      "open": false,
    },
    {
      "image": food2,
      "title": "Uber Eats",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "cost": "€2.50",
      "time": "25-40 min",
      "rating": "3.5",
      "open": true,
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

  var recommandationList = [
    {
      "title": "Chicken Nuggets 4 kpl + dippi",
      "image": recommandation,
      "price": "€ 9.00",
    },
    {
      "title": "Burger",
      "image": recommandation2,
      "price": "€ 9.00",
    },
    {
      "title": "Chicken Nuggets 4 kpl + dippi",
      "image": recommandation,
      "price": "€ 9.00",
    },
    {
      "title": "Burger",
      "image": recommandation2,
      "price": "€ 9.00",
    },
  ];

  late RestaurantDetailsModel restaurantDetailsList;
  late CatagoryDetailsModel catagoryDetailsList;
  var isLoading = false.obs;

  Future<void> fetchRestaurant() async {
    var token = data["data"]['api_token'];
    try {
      isLoading.value = true;
      final res = await ApiService.get(
        url: '/restaurants/fin/espoo',
        headers: {
          "Authorization": "Bearer $token",
          "Content-Type": "application/json",
        },
      );

      print(">>>>>>> ${res!.data}");
      print(">>>>>>> ${token}");

      if (res.data != null) {
        if (res.statusCode == 200) {
          isLoading.value = false;
          restaurantDetailsList = RestaurantDetailsModel.fromJson(res.data);
          print(">>>>>>> ${restaurantDetailsList.data!.length}");
        } else {
          isLoading.value = false;
        }
      }
    } catch (e) {
      isLoading.value = false;
      print(e);
    }
  }

  Future<void> fetchCatagory() async {
    var token = data["data"]['api_token'];
    try {
      isLoading.value = true;
      final res = await ApiService.get(
        url: '/categories/fin/espoo?items=10',
        headers: {
          "Authorization": "Bearer $token",
          "Content-Type": "application/json",
        },
      );

      print(">>>>>>> ${res!.data}");
      print(">>>>>>> ${token}");

      if (res.data != null) {
        if (res.statusCode == 200) {
          isLoading.value = false;
          catagoryDetailsList = CatagoryDetailsModel.fromJson(res.data);
          print(">>>>>>> ${restaurantDetailsList.data!.length}");
        } else {
          isLoading.value = false;
        }
      }
    } catch (e) {
      isLoading.value = false;
      print(e);
    }
  }
}
