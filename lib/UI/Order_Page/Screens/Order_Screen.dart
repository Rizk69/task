import 'package:flutter/material.dart';
import 'package:task/UI/Order_Page/Screens/Orders_Deatils.dart';
import 'package:task/UI/Order_Page/Widget/ItemsOrder.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  TabBar get _tabBar => const TabBar(
          unselectedLabelColor: Colors.black,
          labelStyle: TextStyle(color: Color(0XFFF18F15)),
          automaticIndicatorColorAdjustment: false,
          indicatorColor: Colors.transparent,
          //labelColor: Colors.green,

          // overlayColor:MaterialStateProperty.all(Colors.cyan) ,
          labelPadding: EdgeInsets.symmetric(vertical: 15),
          tabs: [
            Text(
              'New',
              style: TextStyle(fontSize: 18),
            ),
            Text('Current', style: TextStyle(fontSize: 18)),
            Text('Previous', style: TextStyle(fontSize: 18))
          ]);

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0XFFF5F5F5),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Orders',
            style: TextStyle(color: Colors.black),
          ),
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              surfaceTintColor: const Color(0XFFF18F15),
              borderOnForeground: true,
              color: const Color(0XFFD9D9D9),
              child: Theme(
                  data: ThemeData()
                      .copyWith(splashColor: const Color(0XFFF18F15)),
                  child: _tabBar),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrdersDetails(
                                  named: 'Khaled Hossam',
                                  imagePath: 'assets/Mask group (1).png',
                                  content: 'charcoal drawing',
                                )),
                      );
                    },
                    child: ItemsOrders(
                      imagepath: 'assets/Mask group (1).png',
                      named: 'Khaled Hossam',
                      cntent: 'charcoal drawing',
                    ))
              ],
            ),
            Column(
              children: [
                ItemsOrders(
                  imagepath: 'assets/Mask group (1).png',
                  named: 'Khaled Hossam',
                  cntent: 'charcoal drawing',
                )
              ],
            ),
            Column(
              children: [
                ItemsOrders(
                  imagepath: 'assets/Mask group (1).png',
                  named: 'Khaled Hossam',
                  cntent: 'charcoal drawing',
                )
              ],
            )
          ],
        ),
      ));
}
