import 'package:http/http.dart' as http;
import 'package:task/Model/home_respons.dart';
import 'package:task/Model/register_response.dart';

import '../Model/login_respons.dart';

class Api {
  static var authority = 'ezdhar.motaweron.com';

  Future<LoginRespons> login(String phone, String code) async {
    try {
      var url = Uri.https(authority, '/api/auth/login');
      var response =
          await http.post(url, body: {'phone_code': code, 'phone': phone});
      print("response");
      print(response);
      print("response.body");
      print(response.body);

      return loginResponsFromJson(response.body);
    } catch (e) {
      rethrow;
    }
  }

  Future<RegesterResponse> register(
      String phone,
      String code,
      String firstname,
      String lastName,
      String time,
      String image,
      String email,
      int years) async {
    try {
      var url = Uri.https(authority, '/api/auth/register');
      var response = await http.post(url, body: {
        'phone_code': code,
        'phone': phone,
        'city_id': "1",
        'first_name': firstname,
        'last_name': lastName,
        'birthdate': '2002-8-8',
        'email': email,
        'user_type': "freelancer",
        'years_ex': years.toString(),
        'category_id': "2"
      });
      print("response");
      print(response);
      print("response.body");
      print(response.body);
      return regesterResponseFromJson(response.body);
    } catch (e) {
      rethrow;
    }
  }

  Future<Home_respons> getHomeData(String token) async {
    try {
      var url = Uri.https(authority, '/api/orders/home');
      var response = await http.get(url, headers: {"Authorization": token});
      print("response");
      print(response);
      print("response.body");
      print(response.body);

      return Home_responsFromJson(response.body);
    } catch (e) {
      rethrow;
    }
  }
}
