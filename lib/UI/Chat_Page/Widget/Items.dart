import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/Business_Logic/counter_cubit.dart';

class Items extends StatelessWidget {
  String name;
  String content;
  int numb;

  Items({required this.name, required this.content, required this.numb});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterState>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          var cubit = CounterCubit.get(context);
          return InkWell(
            onTap: () {
              cubit.inCreaseNumber();
            },
            child: Container(
              height: 70,
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Image.asset(
                      'assets/images.png',
                      width: 150,
                      height: 150,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(content,
                          style: TextStyle(fontSize: 12, color: Colors.black))
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        '10:00 am',
                        style:
                            TextStyle(fontSize: 10, color: Color(0XFF747474)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      cubit.numb == 0
                          ? Text('')
                          : Container(
                              alignment: AlignmentDirectional.center,
                              width: 15,
                              decoration: BoxDecoration(
                                  color: Color(0XFFF18F15),
                                  borderRadius: BorderRadius.circular(100)),
                              child: Text(
                                '${cubit.numb}',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
