import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/photos.dart';
import 'package:sped/view/discover/discover_screen.dart';
import 'package:sped/view/profile/profile_screen.dart';
import 'package:sped/view/restaurants/restaurants.dart';
import 'package:sped/view/search/search_screen.dart';
import 'package:sped/view/stores/store_screen.dart';

class HomeController extends GetxController {
  List nabBarItems = [
    {
      "icon": discoverIcon,
      "title": "Discover",
    },
    {
      "icon": restaurantIcon,
      "title": "Restaurants",
    },
    {
      "icon": searchIcon,
      "title": "Search",
    },
    {
      "icon": storeIcon,
      "title": "Stores",
    },
    {
      "icon": profileIcon,
      "title": "Profile",
    }
  ];
  var currentIndex = 0.obs;
  List<Widget> screens = [
    const DiscoverScreen(),
    const RestaurantsScreen(),
    const SearchScreen(),
    const StoresScreen(),
    const ProfileScreen(),
  ];
}
