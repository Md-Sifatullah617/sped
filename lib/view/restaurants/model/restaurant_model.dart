// To parse this JSON data, do
//
//     final restaurantDetailsModel = restaurantDetailsModelFromJson(jsonString);

import 'dart:convert';

RestaurantDetailsModel restaurantDetailsModelFromJson(String str) =>
    RestaurantDetailsModel.fromJson(json.decode(str));

String restaurantDetailsModelToJson(RestaurantDetailsModel data) =>
    json.encode(data.toJson());

class RestaurantDetailsModel {
  final String? status;
  final int? code;
  final String? message;
  final List<Datum>? data;
  final Links? links;
  final Meta? meta;

  RestaurantDetailsModel({
    this.status,
    this.code,
    this.message,
    this.data,
    this.links,
    this.meta,
  });

  factory RestaurantDetailsModel.fromJson(Map<String, dynamic> json) =>
      RestaurantDetailsModel(
        status: json["status"],
        code: json["code"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        links: json["links"] == null ? null : Links.fromJson(json["links"]),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "links": links?.toJson(),
        "meta": meta?.toJson(),
      };
}

class Datum {
  final int? restaurantId;
  final String? restaurantName;
  final String? restaurantSlug;
  final String? restaurantShortDescription;
  final String? restaurantImage;
  final String? restaurantAltTxt;
  final String? restaurantDeliveryTime;
  final String? restaurantRating;
  final String? restaurantStatus;
  final String? restaurantOffer;

  Datum({
    this.restaurantId,
    this.restaurantName,
    this.restaurantSlug,
    this.restaurantShortDescription,
    this.restaurantImage,
    this.restaurantAltTxt,
    this.restaurantDeliveryTime,
    this.restaurantRating,
    this.restaurantStatus,
    this.restaurantOffer,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        restaurantId: json["restaurant_id"],
        restaurantName: json["restaurant_name"],
        restaurantSlug: json["restaurant_slug"],
        restaurantShortDescription: json["restaurant_short_description"],
        restaurantImage: json["restaurant_image"],
        restaurantAltTxt: json["restaurant_alt_txt"],
        restaurantDeliveryTime: json["restaurant_delivery_time"],
        restaurantRating: json["restaurant_rating"],
        restaurantStatus: json["restaurant_status"],
        restaurantOffer: json["restaurant_offer"],
      );

  Map<String, dynamic> toJson() => {
        "restaurant_id": restaurantId,
        "restaurant_name": restaurantName,
        "restaurant_slug": restaurantSlug,
        "restaurant_short_description": restaurantShortDescription,
        "restaurant_image": restaurantImage,
        "restaurant_alt_txt": restaurantAltTxt,
        "restaurant_delivery_time": restaurantDeliveryTime,
        "restaurant_rating": restaurantRating,
        "restaurant_status": restaurantStatus,
        "restaurant_offer": restaurantOffer,
      };
}

class Links {
  final String? first;
  final String? last;
  final dynamic prev;
  final dynamic next;

  Links({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        first: json["first"],
        last: json["last"],
        prev: json["prev"],
        next: json["next"],
      );

  Map<String, dynamic> toJson() => {
        "first": first,
        "last": last,
        "prev": prev,
        "next": next,
      };
}

class Meta {
  final int? currentPage;
  final int? from;
  final int? lastPage;
  final List<Link>? links;
  final String? path;
  final int? perPage;
  final int? to;
  final int? total;

  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        currentPage: json["current_page"],
        from: json["from"],
        lastPage: json["last_page"],
        links: json["links"] == null
            ? []
            : List<Link>.from(json["links"]!.map((x) => Link.fromJson(x))),
        path: json["path"],
        perPage: json["per_page"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "from": from,
        "last_page": lastPage,
        "links": links == null
            ? []
            : List<dynamic>.from(links!.map((x) => x.toJson())),
        "path": path,
        "per_page": perPage,
        "to": to,
        "total": total,
      };
}

class Link {
  final String? url;
  final String? label;
  final bool? active;

  Link({
    this.url,
    this.label,
    this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"],
        label: json["label"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "label": label,
        "active": active,
      };
}
