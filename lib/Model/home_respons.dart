import 'dart:convert';

/// status : true
/// message : "تم الحصول علي الاوردرات بنجاح"
/// code : 200
/// orders : {"orders":12,"orders_month":3,"total_users":3,"users_month":3}
Home_respons Home_responsFromJson(String str) =>
    Home_respons.fromJson(json.decode(str));

String Home_responsToJson(Home_respons data) => json.encode(data.toJson());

class Home_respons {
  bool? status;
  String? message;
  int? code;
  Orders? orders;

  Home_respons({this.status, this.message, this.code, this.orders});

  Home_respons.fromJson(dynamic json) {
    status = json["status"];
    message = json["message"];
    code = json["code"];
    orders = json["orders"] != null ? Orders.fromJson(json["orders"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["status"] = status;
    map["message"] = message;
    map["code"] = code;
    if (orders != null) {
      map["orders"] = orders?.toJson();
    }
    return map;
  }
}

/// orders : 12
/// orders_month : 3
/// total_users : 3
/// users_month : 3

class Orders {
  int? orders;
  int? ordersMonth;
  int? totalUsers;
  int? usersMonth;

  Orders({this.orders, this.ordersMonth, this.totalUsers, this.usersMonth});

  Orders.fromJson(dynamic json) {
    orders = json["orders"];
    ordersMonth = json["orders_month"];
    totalUsers = json["total_users"];
    usersMonth = json["users_month"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["orders"] = orders;
    map["orders_month"] = ordersMonth;
    map["total_users"] = totalUsers;
    map["users_month"] = usersMonth;
    return map;
  }
}
