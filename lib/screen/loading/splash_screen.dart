import 'dart:async';

import 'package:demo_flutter_talk/screen/home/home_loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3),
        () => Navigator.of(context).pushNamed(HomeLoadingScreen.route));

    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: const SpinKitDualRing(
          color: Color.fromRGBO(240, 170, 170, 1),
          size: 50.0,
        ));

    //     SpinKitFoldingCube(itemBuilder: (BuildContext context, int index) {
    //   return DecoratedBox(
    //     decoration: BoxDecoration(
    //       color: index.isEven
    //           ? const Color.fromRGBO(240, 170, 170, 1)
    //           : const Color.fromRGBO(176, 217, 250, 1),
    //     ),
    //   );
    // }));
  }
}
