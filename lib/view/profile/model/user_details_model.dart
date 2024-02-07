// To parse this JSON data, do
//
//     final userDetailsModel = userDetailsModelFromJson(jsonString);

import 'dart:convert';

UserDetailsModel userDetailsModelFromJson(String str) =>
    UserDetailsModel.fromJson(json.decode(str));

String userDetailsModelToJson(UserDetailsModel data) =>
    json.encode(data.toJson());

class UserDetailsModel {
  final bool? status;
  final int? code;
  final String? message;
  final Data? data;

  UserDetailsModel({
    this.status,
    this.code,
    this.message,
    this.data,
  });

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) =>
      UserDetailsModel(
        status: json["status"],
        code: json["code"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "message": message,
        "data": data?.toJson(),
      };
}

class Data {
  final int? customerId;
  final String? customerFirstName;
  final String? customerLastName;
  final String? customerFullName;
  final String? customerEmail;
  final bool? customerEmailVerified;
  final String? customerPhone;
  final bool? customerPhoneVerified;
  final String? customerImage;

  Data({
    this.customerId,
    this.customerFirstName,
    this.customerLastName,
    this.customerFullName,
    this.customerEmail,
    this.customerEmailVerified,
    this.customerPhone,
    this.customerPhoneVerified,
    this.customerImage,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        customerId: json["customer_id"],
        customerFirstName: json["customer_first_name"],
        customerLastName: json["customer_last_name"],
        customerFullName: json["customer_full_name"],
        customerEmail: json["customer_email"],
        customerEmailVerified: json["customer_email_verified"],
        customerPhone: json["customer_phone"],
        customerPhoneVerified: json["customer_phone_verified"],
        customerImage: json["customer_image"],
      );

  Map<String, dynamic> toJson() => {
        "customer_id": customerId,
        "customer_first_name": customerFirstName,
        "customer_last_name": customerLastName,
        "customer_full_name": customerFullName,
        "customer_email": customerEmail,
        "customer_email_verified": customerEmailVerified,
        "customer_phone": customerPhone,
        "customer_phone_verified": customerPhoneVerified,
        "customer_image": customerImage,
      };
}
