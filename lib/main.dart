import 'package:demo_flutter_talk/screen/account/account_screen.dart';
import 'package:demo_flutter_talk/screen/home/home_loading_screen.dart';
import 'package:demo_flutter_talk/screen/home/home_screen.dart';
import 'package:demo_flutter_talk/screen/loading/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        HomeLoadingScreen.route: (context) => const HomeLoadingScreen(),
        HomeScreen.route: (context) => const HomeScreen(),
        AccountScreen.route: (context) => const AccountScreen(),
      },
    );
  }
}
