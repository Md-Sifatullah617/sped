import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sped/utils/photos.dart';

class SearchesController extends GetxController {
  final FocusNode searchFocusNode = FocusNode();
  final TextEditingController searchController = TextEditingController();
  var isFocused = false.obs;

  @override
  void onInit() {
    super.onInit();
    searchFocusNode.addListener(_focusListener); // Add this line
  }

  @override
  void onClose() {
    searchFocusNode.removeListener(_focusListener); // Add this line
    searchFocusNode.dispose();
    super.onClose();
  }

  void _focusListener() {
    // Add this method
    isFocused.value = searchFocusNode.hasFocus;
    print(searchFocusNode.hasFocus);
  }

  List searchList = [
    {
      "image": food1,
      "title": "Greasy Spoon Tjarhovsgatan",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "cost": "€3.50",
      "time": "15-20 min",
      "rating": "4.5",
    },
    {
      "image": food2,
      "title": "Expresso House Gotgatan",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "cost": "€2.50",
      "time": "25-40 min",
      "rating": "3.5",
    },
    {
      "image": food1,
      "title": "Greasy Spoon Tjarhovsgatan",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "cost": "€3.50",
      "time": "15-20 min",
      "rating": "4.5",
    },
    {
      "image": food2,
      "title": "Expresso House Gotgatan",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "cost": "€2.50",
      "time": "25-40 min",
      "rating": "3.5",
    },
    {
      "image": food1,
      "title": "Greasy Spoon Tjarhovsgatan",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "cost": "€3.50",
      "time": "15-20 min",
      "rating": "4.5",
    },
    {
      "image": food2,
      "title": "Expresso House Gotgatan",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "cost": "€2.50",
      "time": "25-40 min",
      "rating": "3.5",
    },
    {
      "image": food1,
      "title": "Greasy Spoon Tjarhovsgatan",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "cost": "€3.50",
      "time": "15-20 min",
      "rating": "4.5",
    },
    {
      "image": food2,
      "title": "Expresso House Gotgatan",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
      "cost": "€2.50",
      "time": "25-40 min",
      "rating": "3.5",
    },
  ];

  List resentSearches = [
    "Flowers",
    "Burger",
    "Pizza",
    "Pasta",
    "Sushi",
    "Burger",
    "Pizza",
    "Burger",
    "Pizza",
    "Pasta",
    "Sushi",
    "Burger",
    "Pizza",
  ];
}
