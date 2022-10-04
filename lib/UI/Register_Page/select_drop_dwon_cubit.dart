import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'select_drop_dwon_state.dart';

class SelectDropDwonCubit extends Cubit<SelectDropDwonState> {
  SelectDropDwonCubit() : super(SelectDropDwonInitial());

  static SelectDropDwonCubit get(BuildContext context) =>
      BlocProvider.of(context);
  String? text;

  getCountry(String country) {
    text = country;
    emit(Click());
  }
}
