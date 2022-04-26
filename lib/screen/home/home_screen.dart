import 'package:demo_flutter_talk/screen/home/widgets/user_card.dart';
import 'package:demo_flutter_talk/screen/model/user.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<User> userCards = const [
    User(
      id: 'user1',
      color: Color.fromRGBO(240, 170, 170, 1),
    ),
    User(
      id: 'user2',
      color: Color.fromRGBO(176, 217, 250, 1),
    ),
    User(
      id: 'user3',
      color: Color.fromRGBO(188, 156, 219, 1),
    ),
    User(
      id: 'user4',
      color: Color.fromRGBO(252, 240, 167, 1),
    ),
    User(
      id: 'user5',
      color: Color.fromRGBO(188, 234, 181, 1),
    ),
    User(
      id: 'user6',
      color: Color.fromRGBO(240, 170, 170, 1),
    ),
    User(
      id: 'user7',
      color: Color.fromRGBO(176, 217, 250, 1),
    ),
    User(
      id: 'user8',
      color: Color.fromRGBO(188, 156, 219, 1),
    ),
    User(
      id: 'user9',
      color: Color.fromRGBO(252, 240, 167, 1),
    ),
    User(
      id: 'user10',
      color: Color.fromRGBO(188, 234, 181, 1),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey.shade700,
        elevation: 1,
      ),
      body: SingleChildScrollView(
          child: Container(
        color: Colors.grey.shade100,
        child: Column(
            children: userCards
                .map((e) => UserCard(
                      tag: e.id,
                      color: e.color,
                    ))
                .toList()),
      )),
    );
  }
}
