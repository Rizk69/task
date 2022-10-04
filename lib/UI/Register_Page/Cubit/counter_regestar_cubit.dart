import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Model/register_response.dart';
import '../../../NetWork/Api.dart';

part 'counter_regestar_state.dart';

class CounterRegestarCubit extends Cubit<CounterRegestarState> {
  CounterRegestarCubit() : super(CounterRegestarInitial()) {
    api = Api();
  }

  static CounterRegestarCubit get(BuildContext context) =>
      BlocProvider.of(context);
  late Api api;
  late RegesterResponse regesterResponse;

  int num = 0;

  inCreasNum() {
    num++;
    emit(Counter());
  }

  deCreasNum() {
    if (num == 0) return;
    num--;
    emit(Counter());
  }

  register(String phone, String code, String firstname, String lastName,
      String time, String image, String email, int years) async {
    emit(Loading());
    try {
      var model = await api.register(
          phone, code, firstname, lastName, time, image, email, years);
      print(model.data!.user!.firstName);
      regesterResponse = model;
      emit(Loaded(model));
    } catch (e) {
      print("e");
      print(e);
      print(e.toString());
      emit(onError());
    }
  }
}
