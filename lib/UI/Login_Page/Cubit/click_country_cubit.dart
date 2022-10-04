import 'dart:convert';

import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../Model/login_respons.dart';
import '../../../NetWork/Api.dart';

part 'click_country_state.dart';

class ClickCountryCubit extends Cubit<ClickCountryState> {
  ClickCountryCubit() : super(ClickCountryInitial()) {
    api = Api();
  }

  static ClickCountryCubit get(BuildContext context) =>
      BlocProvider.of(context);
  CountryCode? newCode;
  late Api api;
  late LoginRespons loginRespons;

  void getSelectCode(CountryCode? code) {
    newCode = code;
    emit(Click());
  }

  login(String phone, String code) async {
    emit(LoginLoading());
    try {
      var model = await api.login(
        phone,
        code,
      );
      print(model.data!.user!.firstName);
      loginRespons = model;
      setUser(model);
      emit(LoginLoaded(model));
    } catch (e) {
      print(e);
      emit(LoginError());
    }
  }

  setUser(LoginRespons model) async {
    SharedPreferences.setMockInitialValues({});
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('user', jsonEncode(model));
  }
}
