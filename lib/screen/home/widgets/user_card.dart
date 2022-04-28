import 'package:demo_flutter_talk/screen/account/account_screen.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key, required this.color, required this.tag})
      : super(key: key);

  final Color color;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(AccountScreen.route,
            arguments: {'color': color, 'id': tag}),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              height: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.04),
                      blurRadius: 8,
                      spreadRadius: 3,
                      offset: Offset(0, 0))
                ],
              ),
            ),
            Hero(
              tag: tag,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
