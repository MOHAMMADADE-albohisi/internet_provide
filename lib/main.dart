import 'package:flutter/material.dart';
import 'package:internet_provide/screens/Detail.dart';
import 'package:internet_provide/screens/InternetQuota_screen.dart';
import 'package:internet_provide/screens/Verify_screen.dart';
import 'package:internet_provide/screens/credit_screen.dart';
import 'package:internet_provide/screens/forgetpassword.dart';
import 'package:internet_provide/screens/home-screen.dart';
import 'package:internet_provide/screens/login_screen.dart';
import 'package:internet_provide/screens/lunchscreen.dart';
import 'package:internet_provide/screens/newpasword_screen.dart';
import 'package:internet_provide/screens/onbresdscreen.dart';
import 'package:internet_provide/screens/payment_screen.dart';
import 'package:internet_provide/screens/regesteruser.dart';
import 'package:internet_provide/screens/setting_screen.dart';

void main() {
  runApp(interntapp());
}

class interntapp extends StatelessWidget {
  const interntapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/lunch_screen',
      routes: {
        '/lunch_screen': (context) => const lunchscreen(),
        '/onbresd_screen': (context) => const onbresd_screen(),
        '/login_screen': (context) => const login_screen(),
        '/regesteruser_screen': (context) => const regesteruser_screen(),
        '/forget_screen': (context) => const forgetpassword(),
        '/home_screen': (context) => const homescreen(),
        '/credit_screen': (context) => const creditscreen(),
        '/InternetQuota_screen': (context) => const Internet_Quota(),
        '/detail_screem': (context) => const detail_screen(),
        '/paymen_screen': (context) => const paymen_screen(),
        '/setting_screen': (context) => const setting_screen(),
        '/newpasswrd_screen': (context) => const newpassword(),
        '/verify_screen': (context) => const Verify_screen(),
      },
    );
  }
}
