// To parse this JSON data, do
//
//     final catagoryDetailsModel = catagoryDetailsModelFromJson(jsonString);

import 'dart:convert';

CatagoryDetailsModel catagoryDetailsModelFromJson(String str) =>
    CatagoryDetailsModel.fromJson(json.decode(str));

String catagoryDetailsModelToJson(CatagoryDetailsModel data) =>
    json.encode(data.toJson());

class CatagoryDetailsModel {
  final String? status;
  final int? code;
  final String? message;
  final List<Datum>? data;

  CatagoryDetailsModel({
    this.status,
    this.code,
    this.message,
    this.data,
  });

  factory CatagoryDetailsModel.fromJson(Map<String, dynamic> json) =>
      CatagoryDetailsModel(
        status: json["status"],
        code: json["code"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  final String? categorySlug;
  final String? categoryName;
  final String? categoryImage;
  final String? categoryAltTxt;
  final String? categoryRestaurantsCount;

  Datum({
    this.categorySlug,
    this.categoryName,
    this.categoryImage,
    this.categoryAltTxt,
    this.categoryRestaurantsCount,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        categorySlug: json["category_slug"],
        categoryName: json["category_name"],
        categoryImage: json["category_image"],
        categoryAltTxt: json["category_alt_txt"],
        categoryRestaurantsCount: json["category_restaurants_count"],
      );

  Map<String, dynamic> toJson() => {
        "category_slug": categorySlug,
        "category_name": categoryName,
        "category_image": categoryImage,
        "category_alt_txt": categoryAltTxt,
        "category_restaurants_count": categoryRestaurantsCount,
      };
}
