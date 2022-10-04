import 'package:flutter/material.dart';
import 'package:task/UI/Register_Page/Screens/RegisterScreen.dart';

class SplashScreen extends StatefulWidget {
  static const String route = 'splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return RegisterScreen();

        //HomeScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      color: const Color(0XFFF5F5F5),
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Image.asset(
        'assets/logo.png',
        alignment: Alignment.center,
      ),
    );
  }
}
