// To parse this JSON data, do
//
//     final loginRespons = loginResponsFromJson(jsonString);

import 'dart:convert';

LoginRespons loginResponsFromJson(String str) =>
    LoginRespons.fromJson(json.decode(str));

String loginResponsToJson(LoginRespons data) => json.encode(data.toJson());

class LoginRespons {
  LoginRespons({
    this.data,
    this.message,
    this.code,
  });

  Data? data;
  String? message;
  int? code;

  factory LoginRespons.fromJson(Map<String, dynamic> json) => LoginRespons(
        data: Data.fromJson(json["data"]),
        message: json["message"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "data": data!.toJson(),
        "message": message,
        "code": code,
      };
}

class Data {
  Data({
    this.user,
    this.accessToken,
    this.tokenType,
    this.consultant,
    this.subCategory,
    this.subCategories,
  });

  User? user;
  String? accessToken;
  String? tokenType;
  dynamic consultant;
  SubCategory? subCategory;
  List<dynamic>? subCategories;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: User.fromJson(json["user"]),
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        consultant: json["consultant"],
        subCategory: SubCategory.fromJson(json["sub_category"]),
        subCategories: List<dynamic>.from(json["sub_categories"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "user": user!.toJson(),
        "access_token": accessToken,
        "token_type": tokenType,
        "consultant": consultant,
        "sub_category": subCategory!.toJson(),
        "sub_categories": List<dynamic>.from(subCategories!.map((x) => x)),
      };
}

class SubCategory {
  SubCategory({
    this.id,
    this.titleAr,
    this.titleEn,
    this.image,
  });

  int? id;
  String? titleAr;
  String? titleEn;
  String? image;

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        id: json["id"],
        titleAr: json["title_ar"],
        titleEn: json["title_en"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title_ar": titleAr,
        "title_en": titleEn,
        "image": image,
      };
}

class User {
  User({
    this.id,
    this.firstName,
    this.lastName,
    this.phoneCode,
    this.phone,
    this.email,
    this.image,
    this.birthdate,
    this.userType,
    this.cityId,
    this.wallet,
    this.city,
  });

  int? id;
  String? firstName;
  String? lastName;
  String? phoneCode;
  String? phone;
  dynamic email;
  String? image;
  DateTime? birthdate;
  String? userType;
  int? cityId;
  int? wallet;
  City? city;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        phoneCode: json["phone_code"],
        phone: json["phone"],
        email: json["email"],
        image: json["image"],
        birthdate: DateTime.parse(json["birthdate"]),
        userType: json["user_type"],
        cityId: json["city_id"],
        wallet: json["wallet"],
        city: City.fromJson(json["city"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "phone_code": phoneCode,
        "phone": phone,
        "email": email,
        "image": image,
        "birthdate":
            "${birthdate!.year.toString().padLeft(4, '0')}-${birthdate!.month.toString().padLeft(2, '0')}-${birthdate!.day.toString().padLeft(2, '0')}",
        "user_type": userType,
        "city_id": cityId,
        "wallet": wallet,
        "city": city!.toJson(),
      };
}

class City {
  City({
    this.id,
    this.cityNameAr,
    this.cityNameEn,
  });

  int? id;
  String? cityNameAr;
  String? cityNameEn;

  factory City.fromJson(Map<String, dynamic> json) => City(
        id: json["id"],
        cityNameAr: json["city_name_ar"],
        cityNameEn: json["city_name_en"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "city_name_ar": cityNameAr,
        "city_name_en": cityNameEn,
      };
}
