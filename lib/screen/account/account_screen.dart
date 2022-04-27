import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  static String route = '/account';
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'User',
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey.shade700,
        elevation: 1,
      ),
      body: SingleChildScrollView(
          child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 150,
            color: Colors.grey.shade200,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Hero(
              tag: args['id'],
              child: CircleAvatar(
                radius: 55,
                backgroundColor: args['color'],
              ),
            ),
          )
        ],
      )),
    );
  }
}
