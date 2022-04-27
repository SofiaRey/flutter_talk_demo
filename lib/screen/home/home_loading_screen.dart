import 'dart:async';

import 'package:demo_flutter_talk/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeLoadingScreen extends StatefulWidget {
  const HomeLoadingScreen({Key? key}) : super(key: key);

  static String route = '/shimmer';
  @override
  State<HomeLoadingScreen> createState() => _HomeLoadingScreenState();
}

class _HomeLoadingScreenState extends State<HomeLoadingScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3),
        () => Navigator.of(context).pushNamed(HomeScreen.route));
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          foregroundColor: Colors.grey.shade700,
          elevation: 1,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade200,
            highlightColor: Colors.grey.shade50,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (_, __) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 90),
                      height: 75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
