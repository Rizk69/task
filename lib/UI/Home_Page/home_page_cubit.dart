import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/Model/home_respons.dart';
import 'package:task/NetWork/Api.dart';

import '../../Model/login_respons.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial()) {
    getUser();
    api = Api();
    home_respons = Home_respons();
  }

  late Home_respons home_respons;

  static HomePageCubit get(BuildContext context) => BlocProvider.of(context);
  LoginRespons? user;
  late Api api;

  getData() async {
    try {
      var model = await api.getHomeData(user!.data!.accessToken!);
      home_respons = model;
      emit(GetOrder());
    } catch (e) {
      print("errrrrrrrrrrrror");
      print(e);
      print(e.toString());
      emit(UserModel());
    }
  }

  getUser() async {
    final prefs = await SharedPreferences.getInstance();
    String? user = prefs.getString('user');
    var json = jsonDecode(user!);
    this.user = LoginRespons.fromJson(json);
    emit(UserModel());
  }
}
