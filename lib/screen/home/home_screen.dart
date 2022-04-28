import 'package:demo_flutter_talk/model/user.dart';
import 'package:demo_flutter_talk/screen/home/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final List<User> _userCards = const [
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

  static const String route = '/home';

  @override
  Widget build(BuildContext context) {
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
      body: Container(
        color: Colors.grey.shade100,
        child: AnimationLimiter(
          child: ListView.builder(
            itemCount: _userCards.length,
            itemBuilder: (BuildContext ctx, int i) {
              return AnimationConfiguration.staggeredList(
                position: i,
                delay: const Duration(milliseconds: 500),
                duration: const Duration(milliseconds: 500),
                // FadeInAnimation, SlideAnimation, ScaleAnimation, FlipAnimation
                child: ScaleAnimation(
                  delay: const Duration(milliseconds: 250),
                  child: UserCard(
                    tag: _userCards[i].id,
                    color: _userCards[i].color,
                  ),
                ),
              );
            },
          ),
        ),

        // ListView(
        //     children: _ userCards
        //         .map((user) => UserCard(
        //               tag: user.id,
        //               color: user.color,
        //             ))
        //         .toList()),
      ),
    );
  }
}
