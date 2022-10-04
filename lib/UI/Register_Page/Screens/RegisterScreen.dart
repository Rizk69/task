import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:task/UI/Login_Page/Screens/Login_Screen.dart';
import 'package:task/UI/Order_Page/Widget/Buttom.dart';
import 'package:task/UI/Register_Page/Cubit/counter_regestar_cubit.dart';
import 'package:task/UI/Register_Page/Widget/DropDown.dart';
import 'package:task/UI/Register_Page/Widget/Headar%20Text%20Field.dart';
import 'package:task/UI/Register_Page/Widget/Text%20Input.dart';

class RegisterScreen extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];
  final List<String> item = [
    'painting',
    'painting',
    'painting',
    'painting',
    'Item5',
    'Item6',
    'Item7',
    'Item8',
  ];

  static const String route = 'Register';

  @override
  Widget build(BuildContext context) {
    var firstName = TextEditingController();
    var lastName = TextEditingController();
    var email = TextEditingController();
    var phoneNumber = TextEditingController();

    firstName.text = "احمد";
    lastName.text = "محمد";
    email.text = "yah@gmail.com";
    phoneNumber.text = "123456789000";

    return BlocProvider<CounterRegestarCubit>(
      create: (context) => CounterRegestarCubit(),
      child: BlocBuilder<CounterRegestarCubit, CounterRegestarState>(
        builder: (context, state) {
          var cubit = CounterRegestarCubit.get(context);
          if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is onError) {
            return const Center(
              child: Text('erorr'),
            );
          } else {
            return Scaffold(
              backgroundColor: Color(0XFFF5F5F5),
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.route);
                  },
                ),
                title: const Text(
                  'Register Consultant',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                centerTitle: true,
                backgroundColor: Colors.white,
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'assets/Group 54.png',
                        width: 154,
                        height: 154,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Form(
                        key: formKey,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Header(
                                iconPath: 'assets/Group.jpg',
                                text: 'UserName',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  TextInput(
                                    hintText: 'First Name',
                                    error: 'First Name',
                                    controller: firstName,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  TextInput(
                                    hintText: 'Last Name',
                                    error: 'Last Name',
                                    controller: lastName,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Header(
                                    iconPath: 'assets/Group.jpg',
                                    text: 'Email'),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  TextInput(
                                    hintText: 'mail@mail.com',
                                    error: 'Email',
                                    controller: email,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Header(
                                    iconPath: 'assets/Group.jpg',
                                    text: 'Phone'),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  TextInput(
                                    hintText: '+966 | phone number',
                                    error: 'phoneNumber',
                                    controller: phoneNumber,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Header(
                                    iconPath: 'assets/Group.jpg', text: 'Town'),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              DropWon(
                                  hintText: 'example : riyadh', items: items),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Header(
                                    iconPath: 'assets/Group.jpg',
                                    text: 'Category'),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              DropWon(
                                  hintText: 'example : painting', items: item),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Header(
                                    iconPath: 'assets/Group.jpg',
                                    text: 'Date of Birth'),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      alignment:
                                          AlignmentDirectional.centerStart,
                                      elevation: MaterialStateProperty.all(0),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.transparent),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'BD / MM / YYYY',
                                      style: TextStyle(
                                          color: Color(0XFF747474),
                                          fontSize: 16),
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Header(
                                    iconPath: 'assets/Group.jpg',
                                    text: 'Years of Experience'),
                              ),
                              Container(
                                  height: 60,
                                  padding: const EdgeInsets.only(
                                      right: 15, left: 20, top: 4, bottom: 4),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('${cubit.num}'),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                              child: IconButton(
                                            icon: const Icon(
                                              Icons.expand_less,
                                              size: 17,
                                            ),
                                            onPressed: () {
                                              cubit.inCreasNum();
                                            },
                                          )),
                                          Expanded(
                                              child: IconButton(
                                                  icon: const Icon(
                                                    Icons.expand_more,
                                                    size: 17,
                                                  ),
                                                  onPressed: () {
                                                    cubit.deCreasNum();
                                                  })),
                                        ],
                                      )
                                    ],
                                  )),
                              const SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Buttoms(
                                    namedButtom: 'Back',
                                    color: const Color(0XFF143360),
                                    callBack: () {
                                      Navigator.pushNamed(
                                          context, LoginScreen.route);
                                    },
                                  ),
                                  Buttoms(
                                    namedButtom: 'Start',
                                    color: const Color(0XFFF18F15),
                                    callBack: () {
                                      cubit.register(
                                          phoneNumber.text,
                                          '+20',
                                          firstName.text,
                                          lastName.text,
                                          "1993-07-03",
                                          'image',
                                          email.text,
                                          cubit.num);
                                    },
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
