import 'package:flutter/material.dart';
import 'package:task/Home_Screen/Home_Screen.dart';
import 'package:task/UI/Login_Page/Screens/Login_Screen.dart';
import 'package:task/UI/Order_Page/Screens/Orders_Deatils.dart';
import 'package:task/UI/Register_Page/Screens/RegisterScreen.dart';
import 'package:task/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        OrdersDetails.routeName: (_) => OrdersDetails(),
        SplashScreen.route: (_) => SplashScreen(),
        LoginScreen.route: (_) => LoginScreen(),
        RegisterScreen.route: (_) => RegisterScreen()
      },
      initialRoute: SplashScreen.route,
    );
  }
}
