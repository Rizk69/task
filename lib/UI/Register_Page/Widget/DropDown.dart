import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/UI/Register_Page/select_drop_dwon_cubit.dart';

class DropWon extends StatelessWidget {
  List<String> items;

  String? selectedValue;
  String hintText;

  DropWon({required this.items, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SelectDropDwonCubit>(
      create: (context) => SelectDropDwonCubit(),
      child: BlocBuilder<SelectDropDwonCubit, SelectDropDwonState>(
        builder: (context, state) {
          var cubit = SelectDropDwonCubit.get(context);
          return Container(
            height: 60,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width,
            child: CustomDropdownButton2(
                buttonDecoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent)),
                hint: hintText,
                icon: Icon(
                  Icons.arrow_downward_sharp,
                  size: 15,
                ),
                dropdownItems: items,
                value: cubit.text,
                onChanged: (value) {
                  cubit.getCountry(value!);
                }),
          );
        },
      ),
    );
  }
}
