import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/UI/Home_Page/home_page_cubit.dart';
import 'package:task/UI/Home_Page/widget/Static%20container.dart';
import 'package:task/UI/Home_Page/widget/customappbar.dart';

class HomePage extends StatelessWidget {
  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomePageCubit>(
      create: (context) => HomePageCubit(),
      child: BlocBuilder<HomePageCubit, HomePageState>(
        builder: (context, state) {
          var cubit = HomePageCubit.get(context);

          if (state is UserModel) {
            cubit.getData();
          }

          if (state is GetOrder) {
            List<dynamic> cont = [
              StaticContainer(
                color: const Color(0XFF50C5DF),
                text: 'This month’s Clients',
                number: cubit.home_respons.orders!.orders ?? 0,
                type: 'Client',
                imagePath: 'assets/Group 43.png',
                selected: true,
              ),
              StaticContainer(
                color: const Color(0XFFF18F15),
                text: 'This month’s order',
                number: cubit.home_respons.orders!.ordersMonth ?? 0,
                type: 'Order',
                imagePath: 'assets/Group 44.png',
                selected: true,
              ),
              StaticContainer(
                color: const Color(0XFFBE3033),
                text: 'This month’s miss order',
                number: cubit.home_respons.orders!.usersMonth ?? 0,
                type: 'Client',
                imagePath: 'assets/Group 43.png',
                selected: true,
              ),
              StaticContainer(
                color: const Color(0XFFD27CF0),
                text: 'Total Clients this year',
                number: cubit.home_respons.orders!.totalUsers ?? 0,
                type: 'Order',
                imagePath: 'assets/Group 44.png',
                selected: false,
              ),
            ];
            return SingleChildScrollView(
              child: Column(
                children: [
                  CustomAppbar(
                      userName:
                          "${cubit.user?.data!.user?.firstName} ${cubit.user?.data!.user?.lastName}",
                      imagePath: '${cubit.user?.data!.user?.image}'),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 8,
                        height: 30,
                        alignment: AlignmentDirectional.centerEnd,
                        decoration: const BoxDecoration(
                          color: Color(0XFFF18F15),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50),
                              topRight: Radius.circular(50)),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Statistics',
                        style: TextStyle(
                            fontSize: 23,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    color: Colors.transparent,
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                      itemCount: cont.length,
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 15),
                      itemBuilder: (BuildContext context, int index) {
                        return cont[index];
                      },
                    ),
                  ),
                ],
              ),
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
