import 'package:flutter/material.dart';
import 'package:task/UI/Chat_Page/screens/Chat_Page.dart';
import 'package:task/UI/Home_Page/Screens/Home_Page.dart';

import '../UI/Order_Page/Screens/Order_Screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF5F5F5),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0XFFF18F15),
        unselectedItemColor: Color(0XFF747474),
        showSelectedLabels: true,
        iconSize: 25,
        currentIndex: selectedindex,
        onTap: (index) {
          selectedindex = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/Vector (1).png')),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/Vector.png')), label: 'Chat'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/Group (1).png')),
              label: 'Orders'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/Group (2).png')),
              label: 'Settings'),
        ],
      ),
      body: tabs[selectedindex],
    );
  }

  List<Widget> tabs = [HomePage(), ChatPage(), OrderScreen(), HomePage()];
}
